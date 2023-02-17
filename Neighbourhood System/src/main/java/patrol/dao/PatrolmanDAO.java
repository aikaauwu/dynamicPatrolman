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
import patrol.model.Patrolman;

public class PatrolmanDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static String sql;
	private String patrolmanId;
	private String residentId;
	private String patrolmanUsername,patrolmanPassword;

	//Complete addOrder() method
	public void addPatrolman(Patrolman bean) {
		
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
		
		/*private String patrolmanId;
		private String residentId;
		private String patrolmanUsername,patrolmanPassword;
		*/
		
		patrolmanId = bean.getPatrolmanId();
		residentId = bean.getResidentId();
		patrolmanUsername = bean.getPatrolmanUsername();
		patrolmanPassword = bean.getPatrolmanPassword();
		

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
			
			/*patrolmanId = bean.getPatrolmanId();
			residentId = bean.getResidentId();
			patrolmanUsername = bean.getPatrolmanUsername();
			patrolmanPassword = bean.getPatrolmanPassword();
			*/
			
			//mybaju2
			ps = con.prepareStatement("INSERT INTO patrolman(residentId,patrolmanUsername,patrolmanPassword)VALUES(?,?,?)");
			ps.setString(1, residentId);
			ps.setString(2, patrolmanUsername);
			ps.setString(3,patrolmanPassword);
			
			//execute query
			ps.executeUpdate();
			System.out.println("Successfully inserted");

			//close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();				
		}
	}	

	

}
