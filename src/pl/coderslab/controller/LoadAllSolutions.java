package pl.coderslab.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.model.Connect;
import pl.coderslab.model.Solution;


@WebServlet(value= "/LoadAllSolutions")

public class LoadAllSolutions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoadAllSolutions() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int	contextParam = Integer.valueOf(getServletContext().getInitParameter("number-solutions"));
		
		
		try {
			Solution[] solutions = Solution.loadAll(Connect.getConnection(), contextParam);
			request.setAttribute("solutions", solutions);
			request.getRequestDispatcher("/WEB-INF/allSolutions.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
