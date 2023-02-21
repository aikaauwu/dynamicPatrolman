package patrol.dao;
  
import java.sql.*;       
import java.util.*;
import java.util.Date;
import patrol.connection.ConnectionManager;
import patrol.model.Report;
import patrol.model.*;

public class ReportDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static String sql;
	private String reportId;
	private String patrolmanId, reportDescription, reportDateSubmit;
		//list
		public static Report getReportDetail(int reportId) { 
		Report r = new Report();
		try {
			//call getConnection() method
			con = ConnectionManager.getConnection();

			ps = con.prepareStatement("SELECT * FROM report WHERE reportId=?");
			ps.setInt(1, reportId);

			rs = ps.executeQuery();
			if(rs.next()) {
			r.setReportId(rs.getInt("reportId"));
			r.setPatrolmanId(rs.getString("patrolmanId"));
			r.setReportDescription(rs.getString("reportDescription"));
			r.setReportTimeSubmit(rs.getString("reportDateSubmit"));
			//close connection
			con.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r; 
	}

		//createReport() method
		public void addReport(Report bean) {
		
		reportId = bean.getReportId();
		patrolmanId = bean.getPatrolmanId();
		reportDescription = bean.getReportDescription();
		reportTimeSubmit = bean.getReportTimeSubmit();

		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();
			
			//create statement
			ps = con.prepareStatement("INSERT INTO report(reportId, patrolmanId, reportDescription, reportTimeSubmit) VALUES (?,?,?,?)");
			ps.setInt(1,reportId);
			ps.setString(2,patrolmanId);
			ps.setString(3,reportDescription);
			ps.setString(4,reportTimeSubmit);

			//execute query
			ps.executeUpdate();
			System.out.println("Successfully inserted");

			//close connection
			con.close();

			} 
			
			catch(Exception e) {
			e.printStackTrace();				
			}
	}

	//Complete list method
		public static List<Report> getReportDetails() { 
			List<Report> report = new ArrayList<Report>(); 
			try { 
				//call getConnection() method
				con = ConnectionManager.getConnection();

				//create statement
				stmt = con.createStatement();
				String sql = "SELECT * FROM report ORDER BY reportId ";

				//execute query
				rs = stmt.executeQuery(sql);
					
					while(rs.next()) {		//process result
						Report r = new Report();
						r.setReportId(rs.getInt("reportId"));
						r.setPatrolmanId(rs.getString("patrolmanId"));
						r.setReportDescription(rs.getString("reportDescription"));
						r.setReportTimeSubmit(rs.getString("reportTimeSubmit"));
						report.add(r);
						}
				//close connection
				con.close();

				} 
				catch (Exception e) 
				{ 
				e.printStackTrace(); 
				}
				return report; 
				}
	
		public void updateReport(Report bean) {
		
			reportId = bean.getReportId();
			patrolmanId = bean.getPatrolmanId();
			reportDescription = bean.getReportDescription();
			reportTimeSubmit = bean.getReportTimeSubmit();
	
		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();
			
			//3. create statement
			ps = con.prepareStatement("UPDATE report SET reportDescription=?, reportTimeSubmit=? WHERE reportId=?");
			ps.setString(1, reportDescription);
			ps.setString(2, reportTimeSubmit);
			ps.setInt(3, reportId);
			
			//4. execute query
			ps.executeUpdate();
			
			System.out.println("Successfully updated");
			
			//5. close connection
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
