package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection conn;
	
	
			
	public static Connection getConn() {
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/literaryloop";
		String user = "root";
		String pass = "SLIIT";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,pass);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
}
