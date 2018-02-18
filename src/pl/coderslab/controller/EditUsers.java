package pl.coderslab.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pl.coderslab.model.Connect;
import pl.coderslab.model.Group;
import pl.coderslab.model.User;


@WebServlet("/EditUsers")
public class EditUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditUsers() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//edyja grupy nie działa, trzeba poprawić.
		String editedUserName = request.getParameter("editedUserName");
		String editedUserEmail = request.getParameter("editedUserEmail");
		int editedUserGroupId = Integer.valueOf(request.getParameter("editedGroupId")); 
		int userId = Integer.valueOf(request.getParameter("userId"));
		
		User editedUser;
		try {
			editedUser = User.loadUserById(Connect.getConnection(), userId);
			Group userGroup = Group.loadById(Connect.getConnection(), editedUserGroupId);
			HttpSession sess = request.getSession();
			if(editedUserName != null || editedUserName != "") {
				editedUser.setUsername(editedUserName);
			}
			
			if(editedUserEmail != null || editedUserEmail != "") {
				editedUser.setEmail(editedUserEmail);
			}
			
			if(editedUserGroupId >0) {
				editedUser.setGroup(userGroup);
			}
			
			sess.setAttribute("editedUserName", editedUserName);
			if(editedUserName!="" || editedUserName != null) {
				try {
					editedUser.saveToDB(Connect.getConnection());
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			response.sendRedirect("/Warsztaty_03/AdminUserPanel");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	}

}
