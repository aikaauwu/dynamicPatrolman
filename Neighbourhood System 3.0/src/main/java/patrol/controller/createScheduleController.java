package patrol.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;   
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import patrol.model.scheduleModel;
import patrol.dao.scheduleDao;

import java.io.IOException;

/**
 * Servlet implementation class createScheduleController
 */
public class createScheduleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private scheduleDao dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createScheduleController() {
        super();
        dao = new scheduleDao();
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		scheduleModel s = new scheduleModel();
		s.setScheduleId(request.getParameter("scheduleId"));
		s.setPatrolmanId(request.getParameter("patrolmanId"));
		s.setScheduleTime(request.getParameter("scheduleTime"));
		s.setDateCreated(request.getParameter("dateCreated"));
		s.setLocationId(request.getParameter("locationId"));
		
		dao.addSchedule(s);
		
		request.setAttribute("schedules", scheduleDao.getScheduleDetails());
		RequestDispatcher view = request.getRequestDispatcher("viewSchedule.jsp"); 
		view.forward(request, response);
	}

}
