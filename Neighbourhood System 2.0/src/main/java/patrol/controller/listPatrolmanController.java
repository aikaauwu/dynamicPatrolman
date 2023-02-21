package patrol.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException; 
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import patrol.dao.PatrolmanDAO;

/**
 * Servlet implementation class listPatrolmanController
 */
public class listPatrolmanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private PatrolmanDAO dao;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listPatrolmanController() {
        super();
        dao = new PatrolmanDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		request.setAttribute("patrolmans",PatrolmanDAO.getPatrolmanDetails());
		RequestDispatcher view = request.getRequestDispatcher("viewSchedule.jsp");
		view.forward(request,  response);
	}

}
