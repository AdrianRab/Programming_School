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
import pl.coderslab.model.Exercise;



@WebServlet("/AddExercises")
public class AddExercises extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddExercises() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String exerciseTitle = request.getParameter("exerciseTitle");
		String exerciseDescription = request.getParameter("exerciseDescription");

		Exercise newExercise = new Exercise(exerciseTitle, exerciseDescription);

		HttpSession sess = request.getSession();
		sess.setAttribute("newExerciseTitle", exerciseTitle);
		if(exerciseTitle!="") {
			try {
				newExercise.saveToDB(Connect.getConnection());
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		response.sendRedirect("/Warsztaty_03/AdminExercisesPanel");
	}

}
