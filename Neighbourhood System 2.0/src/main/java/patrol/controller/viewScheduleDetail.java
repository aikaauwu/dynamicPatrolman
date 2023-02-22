package patrol.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import patrol.dao.ResidentDAO;
import patrol.dao.scheduleDao;
/**
 * Servlet implementation class viewScheduleDetail
 */
public class viewScheduleDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private scheduleDao dao;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewScheduleDetail() {
        super();
        dao = new scheduleDao();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String residentUsername = request.getParameter("residentUsername");
		request.setAttribute("resident", ResidentDAO.getResidentProfile(residentUsername));
		RequestDispatcher view = request.getRequestDispatcher("Res Profile.jsp");
		view.forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}
