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
import pl.coderslab.model.User;


@WebServlet("/AdminUserPanel")
public class AdminUserPanel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AdminUserPanel() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Object newUserName = session.getAttribute("newUserName");
		Object editedUserName = session.getAttribute("editedUserName");
		
		try {
			User[] users = User.loadAll(Connect.getConnection());
			request.setAttribute("users", users);
			request.setAttribute("newUser", newUserName);
			request.setAttribute("editedUser", editedUserName);
			request.getRequestDispatcher("/WEB-INF/adminUsers.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
