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


@WebServlet("/EditGroups")
public class EditGroups extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public EditGroups() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String editedGroupName = request.getParameter("editedGroupName");
		int groupId = Integer.valueOf(request.getParameter("groupId"));
		Group editedGroup;
		try {
			editedGroup = Group.loadById(Connect.getConnection(), groupId);
			HttpSession sess = request.getSession();
			editedGroup.setName(editedGroupName);
			sess.setAttribute("editedGroupName", editedGroupName);
			if(editedGroupName!="") {
				try {
					editedGroup.saveToDB(Connect.getConnection());
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			response.sendRedirect("/Warsztaty_03/AdminGroupPanel");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

	}

}
