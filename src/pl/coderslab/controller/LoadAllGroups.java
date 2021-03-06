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


@WebServlet("/LoadAllGroups")
public class LoadAllGroups extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoadAllGroups() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int	contextParam = Integer.valueOf(getServletContext().getInitParameter("number-solutions"));
		
		try {
			Group[] groups = Group.loadAll(Connect.getConnection(), contextParam);
			request.setAttribute("groups", groups);
			request.getRequestDispatcher("/WEB-INF/allGroups.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
