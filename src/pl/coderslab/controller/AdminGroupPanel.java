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
import pl.coderslab.model.Group;


@WebServlet("/AdminGroupPanel")
public class AdminGroupPanel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminGroupPanel() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Object newGroupName = session.getAttribute("newGroupName");
		Object editedGroupName = session.getAttribute("editedGroupName");
		
		try {
			Group[] groups = Group.loadAll(Connect.getConnection());
			request.setAttribute("groups", groups);
			request.setAttribute("newGroup", newGroupName);
			request.setAttribute("editedGroup", editedGroupName);
			request.getRequestDispatcher("/WEB-INF/adminGroups.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
