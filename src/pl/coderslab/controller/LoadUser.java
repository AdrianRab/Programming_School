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
import pl.coderslab.model.Solution;
import pl.coderslab.model.User;


@WebServlet("/LoadUser")
public class LoadUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoadUser() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId = Integer.valueOf(request.getParameter("id"));
		Group group;
		
		try {
			User user = User.loadUserById(Connect.getConnection(), userId);
			Solution solutions [] = Solution.loadAllByUserId(Connect.getConnection(), userId);
			group =  user.getGroup();
			request.setAttribute("group", group);
			request.setAttribute("user", user);
			request.setAttribute("solutions", solutions);
			request.getRequestDispatcher("/WEB-INF/userDetails.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
