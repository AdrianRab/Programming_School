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


@WebServlet("/AdminExercisesPanel")
public class AdminExercisesPanel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminExercisesPanel() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Object newExerciseTitle = session.getAttribute("newExerciseTitle");
		Object editedExerciseTitle = session.getAttribute("editedExerciseTitle");
		
		try {
			Exercise[] exercises = Exercise.loadAll(Connect.getConnection());
			request.setAttribute("exercises", exercises);
			request.setAttribute("newExercise", newExerciseTitle);
			request.setAttribute("editedExercise", editedExerciseTitle);
			request.getRequestDispatcher("/WEB-INF/adminExercises.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
