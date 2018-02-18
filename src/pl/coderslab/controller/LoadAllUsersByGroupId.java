package pl.coderslab.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.model.Connect;
import pl.coderslab.model.Group;
import pl.coderslab.model.User;



@WebServlet("/LoadAllUsersByGroupId")
public class LoadAllUsersByGroupId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoadAllUsersByGroupId() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int groupId = Integer.valueOf(request.getParameter("id"));
		Group group;
		
		try {
			group = Group.loadById(Connect.getConnection(), groupId);
			User users[] = User.loadAllByGrupId(Connect.getConnection(), groupId);
			request.setAttribute("particularGroupUsers", users);
			request.setAttribute("group", group);
			request.getRequestDispatcher("/WEB-INF/groupUsers.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
