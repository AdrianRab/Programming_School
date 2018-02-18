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



@WebServlet("/EditExercises")
public class EditExercises extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditExercises() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String editedExerciseTitle = request.getParameter("editedExerciseTitle");
		String editedExerciseDescription = request.getParameter("editedExerciseDescription"); 
		int exerciseId = Integer.valueOf(request.getParameter("exerciseId"));
		
		Exercise editedExercise;
		try {
			editedExercise = Exercise.loadById(Connect.getConnection(), exerciseId);
			HttpSession sess = request.getSession();
			if(editedExerciseTitle != null || editedExerciseTitle != "") {
				editedExercise.setTitle(editedExerciseTitle);
			}
			
			if(editedExerciseDescription != null || editedExerciseDescription != "") {
				editedExercise.setDescription(editedExerciseDescription);
			}
			
			sess.setAttribute("editedExercise", editedExerciseTitle);
			if(editedExerciseTitle!="" || editedExerciseTitle != null) {
				try {
					editedExercise.saveToDB(Connect.getConnection());
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			response.sendRedirect("/Warsztaty_03/AdminExercisesPanel");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	}

}
