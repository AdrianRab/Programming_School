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


@WebServlet("/SolutionServ")
public class SolutionServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SolutionServ() {
        super();
   
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int solutionId = Integer.valueOf(request.getParameter("id"));
		Solution sol;
		try {
			sol = Solution.loadById(Connect.getConnection(), solutionId);
			request.setAttribute("particulatSolution", sol);
			request.getRequestDispatcher("/WEB-INF/solution.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
