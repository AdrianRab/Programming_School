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



@WebServlet("/AddUsers")
public class AddUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public AddUsers() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//problem z dodawaniem hasła java.lang.NoClassDefFoundError: org/mindrot/jbcrypt/BCrypt
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		String userPassword = request.getParameter("userPassword");
		int groupId = Integer.valueOf(request.getParameter("groupId"));
		Group userGroup;
		try {
			userGroup = Group.loadById(Connect.getConnection(), groupId);
			User newUser = new User(userName, userPassword, userEmail ,userGroup);

			HttpSession sess = request.getSession();
			sess.setAttribute("newUserName", userName);
			if(userName!="") {
				try {
					newUser.saveToDB(Connect.getConnection());
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
