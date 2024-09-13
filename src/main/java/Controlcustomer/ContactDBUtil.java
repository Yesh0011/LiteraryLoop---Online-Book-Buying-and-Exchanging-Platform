package Controlcustomer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class ContactDBUtil{
	public static boolean insertcontact(String name,String email,String phone,String message) {
		boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/literaryloop";
		String user = "root";
		String pass = "SLIIT";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt =  con.createStatement();
			String sql = "insert into contactus values(0,'"+name+"','"+email+"','"+phone+"','"+message+"')";
			int rs =stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
}
