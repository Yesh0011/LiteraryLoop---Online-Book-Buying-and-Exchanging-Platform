package Controlcustomer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class loginDBUtil {
	
	//validate data and show user profile
	
	public static List<customer> validate(String userName, String password){
		
		ArrayList<customer> cus = new ArrayList<>();
		
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/literaryloop";
		String user = "root";
		String pass = "SLIIT";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stat = con.createStatement();
			
			String sql ="select * from customer where userName ='"+userName+"' and password = '"+password+"'";
			
			ResultSet rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				int id =rs.getInt(1);
				String fname = rs.getString(2);
				String Lname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String userN = rs.getString(6);
				String passw = rs.getString(7);
				String gender = rs.getString(8);
				String address = rs.getString(9);
				String district = rs.getString(10);
				String postalcode = rs.getString(11);
				
				customer c = new customer(id,fname,Lname,email,phone,userN,passw,gender,address, district,postalcode);
				cus.add(c);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return cus;
		
		
		
	}
	
	//insert data while registering
	
	public static boolean insertregisterdata(String fname, String lname, String email, String phone, String address, String district , String gender, String postalcode, String uid, String pass) {
		
		boolean ifSuccess = false; 
		
		String url = "jdbc:mysql://localhost:3306/literaryloop";
		String user = "root";
		String password = "SLIIT";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stat = con.createStatement();
			String sql ="insert into customer values(0,'"+fname+"','"+lname+"','"+email+"','"+phone+"','"+uid+"','"+pass+"','"+gender+"','"+address+"','"+district+"','"+postalcode+"')";
			
			int rs = stat.executeUpdate(sql);
			
			if(rs>0) {
				ifSuccess = true;
			}
			else {
				ifSuccess=false;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return ifSuccess;
	}
	
	public static boolean insertbookdata( String bookname, String author, String price, String category, String image,
			String ownerNIC, String phone, String status, String description) {
		
		boolean ifSuccess = false; 
		
		String url = "jdbc:mysql://localhost:3306/literaryloop";
		String user = "root";
		String password = "SLIIT";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stat = con.createStatement();
			String sql ="insert into sellbook values(0,'"+bookname+"','"+author+"','"+price+"','"+category+"','"+image+"','"+ownerNIC+"','"+phone+"','"+status+"','"+description+"')";
			
			int rs = stat.executeUpdate(sql);
			
			if(rs>0) {
				ifSuccess = true;
			}
			else {
				ifSuccess=false;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return ifSuccess;
	}
	
	public static boolean insertpaymentdata( int pid, String name, String address, String phone, String totalPrice) {
		
		boolean ifSuccess = false; 
		
		String url = "jdbc:mysql://localhost:3306/literaryloop";
		String user = "root";
		String password = "SLIIT";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stat = con.createStatement();
			String sql ="insert into payment values(0,'"+name+"','"+address+"','"+phone+"','"+totalPrice+"')";
			
			int rs = stat.executeUpdate(sql);
			
			if(rs>0) {
				ifSuccess = true;
			}
			else {
				ifSuccess=false;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return ifSuccess;
	}
	
	
	public static boolean insertexbookdata( String bookname, String author, String category, String image, String description) {
		
		boolean ifSuccess = false; 
		
		String url = "jdbc:mysql://localhost:3306/literaryloop";
		String user = "root";
		String password = "SLIIT";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stat = con.createStatement();
			String sql ="insert into exchangebook values(0,'"+bookname+"','"+author+"','"+image+"','"+category+"','"+description+"')";
			
			int rs = stat.executeUpdate(sql);
			
			if(rs>0) {
				ifSuccess = true;
			}
			else {
				ifSuccess=false;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return ifSuccess;
	}
	
	public static boolean updateuser(String id, String fname, String lname, String email, String phone, String address, String district , String gender, String postalcode, String uid, String password) {
		boolean ifSuccess = false; 
		String url = "jdbc:mysql://localhost:3306/literaryloop";
		String user = "root";
		String passwords = "SLIIT";
		
		try {
             Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,passwords);
			Statement stat = con.createStatement();
			
			String sql = "update customer set firstName='"+fname+ "',lastName='"+lname+"',email='"+email+"',phone='"+phone+"',userName='"+uid+"',password='"+password+"',gender='"+gender+"',address='"+address+"',district='"+district+"',postalCode='"+postalcode+"'"+"where idcustomer='"+id+"'";
			int rs = stat.executeUpdate(sql);
			
			if(rs>0) {
				ifSuccess = true;
			}
			else {
				ifSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return ifSuccess; 
	}
	
}
