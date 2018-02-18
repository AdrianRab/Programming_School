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


@WebServlet("/AddGroups")
public class AddGroups extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddGroups() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String groupName = request.getParameter("groupName");
		Group newGroup = new Group(groupName);
		HttpSession sess = request.getSession();
		sess.setAttribute("newGroupName", groupName);
		if(groupName!="") {
			try {
				newGroup.saveToDB(Connect.getConnection());
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		response.sendRedirect("/Warsztaty_03/AdminGroupPanel");
	}

}
