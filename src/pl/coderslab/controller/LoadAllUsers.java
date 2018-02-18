package pl.coderslab.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.model.Connect;
import pl.coderslab.model.User;


@WebServlet("/LoadAllUsers")
public class LoadAllUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoadAllUsers() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int	contextParam = Integer.valueOf(getServletContext().getInitParameter("number-solutions"))+5;
		
		try {
			User[] users = User.loadAll(Connect.getConnection(), contextParam);
			request.setAttribute("users", users);
			request.getRequestDispatcher("/WEB-INF/allUsers.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
