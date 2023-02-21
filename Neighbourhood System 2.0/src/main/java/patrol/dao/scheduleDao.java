package patrol.dao;

/**
 * Author: FES
 * Date: 15 January 2023
 * Purpose: CSC584 Assignment 2
 * Student name:
 * Student id:
 */
 
import java.sql.*;       
import java.util.*;
import java.util.Date;

import patrol.connection.ConnectionManager;
import patrol.model.scheduleModel;


public class scheduleDao {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static String sql;
	private String scheduleId;
	private Date dateCreated;
	private String patrolmanId;
	private String scheduleTime;
	private String locationId;
	
	//Complete addOrder() method
	public void addSchedule(scheduleModel bean) {
		
		scheduleId = bean.getScheduleId();
		patrolmanId = bean.getPatrolmanId();
		dateCreated = bean.getDateCreated();
		scheduleTime = bean.getScheduleTime();
		locationId = bean.getLocationId();
	

		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection(); 

			//create statement
						
			ps = con.prepareStatement("INSERT INTO schedule(scheduleId,patrolmanId,scheduleTime,dateCreated,locationId)VALUES(?,?,?,?,?)");
			ps.setString(1, scheduleId);
			ps.setString(2, patrolmanId);
			ps.setString(3, scheduleTime);
			ps.setDate(4, (java.sql.Date) dateCreated);
			ps.setString(5, locationId);
			//execute query
			ps.executeUpdate();
			System.out.println("Successfully inserted");

			//close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();				
		}
	}
	
	public static List<scheduleModel> getScheduleDetails() { 
		List<scheduleModel> schedule = new ArrayList<scheduleModel>(); 
		try { 
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//create statement
			stmt = con.createStatement();
			String sql = "SELECT * FROM schedule ORDER BY scheduleId";

			
			//execute query
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {		//process result
				scheduleModel s = new scheduleModel();
				s.setScheduleId(rs.getString("scheduleId"));
				s.setPatrolmanId(rs.getString("patrolmanId"));
				s.setScheduleTime(rs.getString("scheduleTime"));
				s.setDateCreated(rs.getDate("dataCreated"));
				s.setLocationId(rs.getString("locationId"));
			
				schedule.add(s);
			}


			//close connection
			con.close();

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return schedule; 
	}

	

}
