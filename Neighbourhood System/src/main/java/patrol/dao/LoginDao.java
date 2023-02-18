package patrol.dao;


import java.sql.Connection;  
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import mybaju.model.Orders;
import mybaju.connection.ConnectionManager;
 
public class LoginDao {
     public String authenticateUser(Orders order)
     {
         int orderId = order.getOrderId(); //Assign user entered values to temporary variables.
         double amount = order.getAmount();
 
         Connection con = null;
         Statement statement = null;
         ResultSet resultSet = null;
 
         int orderIdDB = 0;
         double amountDB = 0.0;
 
         try
         {
             con = ConnectionManager.getConnection(); //Fetch database connection object
             statement = con.createStatement(); //Statement is used to write queries. Read more about it.
             resultSet = statement.executeQuery("select orderId,amount from orders"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.
 
             while(resultSet.next()) // Until next row is present otherwise it return false
             {
              orderIdDB = resultSet.getInt("orderId"); //fetch the values present in database
              amountDB = resultSet.getDouble("amount");
 
               if(orderId == orderIdDB && amount == amountDB)
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
