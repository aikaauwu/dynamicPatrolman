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
import patrol.model.*;

public class ResidentDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static String sql;
	private String residentId;
	private String residentUsername,residentPassword,residentName,residentAddress,residentEmail;
	private int residentPhoneNum;
	
	//Complete getCustomerOrder() method
	public static Resident getResidentDetail(String residentId) { 
		Resident resident = new Resident();
		try {
			//call getConnection() method
			con = ConnectionManager.getConnection();

			/*
			//create statement
			ps = con.prepareStatement("SELECT * FROM shawl WHERE id=?");
			ps.setInt(1, id);
			
			//MYBAJU1
			ps = con.prepareStatement("SELECT * FROM orders WHERE orderId=?");
			ps.setInt(1, orderId);*/
			
			//MYBAJU2
			ps = con.prepareStatement("SELECT * FROM resident WHERE residentId=?");
			ps.setString(1, residentId);

			//execute query
			
			/*rs = ps.executeQuery();
			if(rs.next()) {
			s.setId(rs.getInt("id"));
			s.setName(rs.getString("name"));
			s.setBrand(rs.getString("brand"));
			s.setColor(rs.getString("color"));
			s.setMaterial(rs.getString("material"));
			s.setPrice(rs.getDouble("price"));
			s.setQuantity(rs.getInt("quantity"));			
			}
			
			
			order.setOrderId(rs.getInt("orderId"));
			order.setAmount(rs.getDouble("amount"));
			order.setSleeve(rs.getFloat("sleeve"));
			order.setShoulder(rs.getFloat("shoulder"));
			order.setChest(rs.getFloat("chest"));
			order.setTopLength(rs.getFloat("topLength"));
			order.setWaist(rs.getFloat("waist"));
			order.setHip(rs.getFloat("hip"));
			order.setBottomLength(rs.getFloat("bottomLength"));
			order.setCustomerId(rs.getInt("customerId"));*/
			
			//mybaju2
			
			/*private String residentId;
			private String residentUsername,residentPassword,residentName,residentAddress,residentEmail;
			private int residentPhoneNum;
			*/
			
			rs = ps.executeQuery();
			if(rs.next()) {
			resident.setResidentId(rs.getString("residentId"));
			resident.setResidentUsername(rs.getString("residentUsername"));
			resident.setResidentPassword(rs.getString("residentPassword"));
			resident.setResidentAddress(rs.getString("residentAddress"));
			resident.setResidentEmail(rs.getString("residentEmail"));
			resident.setResidentPhoneNum(rs.getInt("residentAddress"));
			
			//close connection
			con.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return resident; 
	}

	//Complete addOrder() method
	public void addResident(Resident bean) {
		
		//get values
		/*
		name = bean.getName();
		brand  = bean.getBrand();
		color = bean.getColor();
		material = bean.getMaterial();
		price = bean.getPrice();
		quantity = bean.getQuantity();
		
		//mybaju1
		orderId = bean.getOrderId();
		amount = bean.getAmount();
		sleeve = bean.getSleeve();
		shoulder  = bean.getShoulder();
		chest = bean.getChest();
		topLength = bean.getToplength();
		waist = bean.getWaist();
		hip = bean.getHip();
		bottomLength = bean.getBottomLength();
		customerId = bean.getCustomerId();*/
		
		/*private String residentId;
		private String residentUsername,residentPassword,residentName,residentAddress,residentEmail;
		private int residentPhoneNum;
		*/
		
		//mybaju2
		residentId = bean.getResidentId();
		residentUsername = bean.getResidentPassword();
		residentName = bean.getResidentName();
		residentAddress = bean.getResidentAddress();
		residentEmail = bean.getResidentEmail();
		residentPhoneNum = bean.getResidentPhoneNum();
		

		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//create statement
			
			/*
			ps = con.prepareStatement("INSERT INTO shawl(name,brand,color,material,price,quantity)VALUES(?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, brand);
			ps.setString(3, color);
			ps.setString(4, material);
			ps.setDouble(5, price);
			ps.setInt(6, quantity);
			
			//mybaju1
			
			ps = con.prepareStatement("INSERT INTO(orderId,amount,sleeve,shoulder,chest, topLength, waist, hip, bottomLength,customerId)VALUES(?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1,orderId);
			ps.setDouble(2, amount);
			ps.setFloat(3, sleeve);
			ps.setFloat(4, shoulder);
			ps.setFloat(5, chest);
			ps.setFloat(6, topLength);
			ps.setFloat(7, waist);
			ps.setFloat(8,hip);
			ps.setFloat(9,bottomLength);
			ps.setInt(10,customerId);*/
			
			/*private String residentId;
			private String residentUsername,residentPassword,residentName,residentAddress,residentEmail;
			private int residentPhoneNum;
			*/
			
			//mybaju2
			ps = con.prepareStatement("INSERT INTO resident(residentUsername,residentPassword,residentName,residentAddress,residentEmail,residentPhoneNum)VALUES(?,?,?,?,?,?)");
			ps.setString(1, residentUsername);
			ps.setString(2, residentPassword);
			ps.setString(3,residentName);
			ps.setString(4, residentAddress);
			ps.setString(5, residentEmail);
			ps.setInt(6, residentPhoneNum);

			//execute query
			ps.executeUpdate();
			System.out.println("Successfully inserted");

			//close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();				
		}
	}	

	//Complete deleteOrder() method
	//but in patrolman system takdak so takyah

	//Complete getCustomerOrders() method
	public static List<Resident> getResidentDetails() { 
		List<Resident> resident = new ArrayList<Resident>(); 
		try { 
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//create statement
			stmt = con.createStatement();
			String sql = "SELECT * FROM resident ORDER BY residentId";

			
			//execute query
			rs = stmt.executeQuery(sql);
				
			/*
			//mybaju1
				while(rs.next()) {		//process result
					Orders s = new Orders();
					s.setOrderId(rs.getInt("orderId"));
					s.setAmount(rs.getDouble("amount"));
					s.setSleeve(rs.getFloat("sleeve"));
					s.setShoulder(rs.getFloat("shoulder"));
					s.setChest(rs.getFloat("chest"));
					s.setTopLength(rs.getFloat("toplength"));
					s.setWaist(rs.getFloat("waist"));
					s.setHip(rs.getFloat("hip"));
					s.setBottomLength(rs.getFloat("bottomLength"));
					s.setCustomerId(rs.getInt("customerId"));
					orders.add(s);*/
			
			//mybaju2
			
			/*private String residentId;
			private String residentUsername,residentPassword,residentName,residentAddress,residentEmail;
			private int residentPhoneNum;
			*/
			
					while(rs.next()) {		//process result
						Resident s = new Resident();
						
						s.setResidentId(rs.getString("residentId"));
						s.setResidentUsername(rs.getString("residentUsername"));
						s.setResidentPassword(rs.getString("residentPassword"));
						s.setResidentName(rs.getString("residentName"));
						s.setResidentAddress(rs.getString("residentAddress"));
						s.setResidentEmail(rs.getString("residentEmail"));
						s.setResidentPhoneNum(rs.getInt("residentPhoneNum"));
						
						resident.add(s);
					}
			//close connection
					con.close();

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return resident; 
	}
	
	public void updateResident(Resident bean) {
		
		/*private String residentId;
		private String residentUsername,residentPassword,residentName,residentAddress,residentEmail;
		private int residentPhoneNum;
		*/
		
		residentId = bean.getResidentId();
		residentUsername = bean.getResidentUsername();
		residentPassword = bean.getResidentPassword();
		residentName = bean.getResidentName();
		residentAddress = bean.getResidentAddress();
		residentEmail = bean.getResidentEmail();
		residentPhoneNum = bean.getResidentPhoneNum();
	
		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();
			
			//3. create statement
			ps = con.prepareStatement("UPDATE resident SET residentUsername=?,residentPassword=?,residentName=?,residentAddress=?,residentEmail=?,residentPhoneNum WHERE residentId=?");
			ps.setString(1, residentUsername);
			ps.setString(2, residentPassword);
			ps.setString(3, residentName);
			ps.setString(4, residentAddress);
			ps.setString(5, residentEmail);
			ps.setInt(6, residentPhoneNum);
			ps.setString(7, residentId);
			
			//4. execute query
			ps.executeUpdate();
			
			System.out.println("Successfully updated");
			
			//5. close connection
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	
	//log in
	
	public String authenticateUser(Resident resident)
    {
	
		/* String studUsername = student.getStudUsername();
        String studPassword = student.getStudPassword(); //Assign user entered values to temporary variables.
        
        String studUsernameDB = "";
        String studPasswordDB = "";

		 */
		
		String residentUsername = resident.getResidentUsername();
		String residentPassword = resident.getResidentPassword();
		
		String residentUsernameDB = "";
		String residentPasswordDB = "";
		
        try
        {
    
        	//con = ConnectionManagerStud.getConnection();
        	
        	con = ConnectionManager.getConnection();

			//create statement
			stmt = con.createStatement();
			String sql = "select * from resident";

			
			//execute query
			rs = stmt.executeQuery(sql);
			
           // table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.

           /* while(rs.next()) // Until next row is present otherwise it return false
            {
             studUsernameDB = rs.getString("studUsername"); //fetch the values present in database
             studPasswordDB = rs.getString("studPassword");

              if(studUsername.equals(studUsernameDB) && studPassword.equals(studPasswordDB))
              {
                 return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
              }
            }}
            catch(SQLException e)
            {
               e.printStackTrace();
            }
            return "Invalid user credentials"; // Return appropriate message in case of failure
        }
        */
			
			 while(rs.next()) // Until next row is present otherwise it return false
	            {
	             residentUsernameDB = rs.getString("residentUsername"); //fetch the values present in database
	             residentPasswordDB = rs.getString("residentPassword");

	              if(residentUsername.equals(residentUsernameDB) && residentPassword.equals(residentPasswordDB))
	              {
	                 return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
	              }
	            }}
	            catch(SQLException e)
	            {
	               e.printStackTrace();
	            }
	            return "Invalid user credentials"; // Return appropriate message in case of failure
	        }
	

}
