package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



import Controlcustomer.sellingbooks;

public class BookDAOimplements implements BookDAO {
	
	private Connection conn;

	public BookDAOimplements(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public List<sellingbooks> getAllbooks() {
		
		List<sellingbooks> list = new ArrayList<sellingbooks>();
		sellingbooks book = null;
		
		try {
			String sql = "select * from sellbook";
			PreparedStatement ps =  conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				book=new sellingbooks();
				book.setBookid(rs.getInt(1));
				book.setBookname(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPrice(rs.getString(4));
				book.setCategory(rs.getString(5));
				book.setImage(rs.getString(6));
				book.setOwnerNIC(rs.getString(7));
				book.setPhone(rs.getString(8));
				book.setStatus(rs.getString(9));
				book.setDescription(rs.getString(10));
				list.add(book);
	
		
			}
			
	
		 
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<sellingbooks> getNewBook() {
		
		List<sellingbooks> list = new ArrayList<sellingbooks>();
		sellingbooks book = null;
		
		try {
			String sql = "select * from sellbook where status=? ";
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.setString(1, "New");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				book=new sellingbooks();
				book.setBookid(rs.getInt(1));
				book.setBookname(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPrice(rs.getString(4));
				book.setCategory(rs.getString(5));
				book.setImage(rs.getString(6));
				book.setOwnerNIC(rs.getString(7));
				book.setPhone(rs.getString(8));
				book.setStatus(rs.getString(9));
				book.setDescription(rs.getString(10));
				list.add(book);
	
		
			}
			
	
		 
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		 
		return null;
	}

	@Override
	public sellingbooks getbookById(int id) {
		sellingbooks book = null;
		
		try {
			String sql = "select * from sellbook where bookId=?";
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				book=new sellingbooks();
				book.setBookid(rs.getInt(1));
				book.setBookname(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPrice(rs.getString(4));
				book.setCategory(rs.getString(5));
				book.setImage(rs.getString(6));
				book.setOwnerNIC(rs.getString(7));
				book.setPhone(rs.getString(8));
				book.setStatus(rs.getString(9));
				book.setDescription(rs.getString(10));
				
	
		
			}
			
	
		 
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return book;
	}

	@Override
	public List<exchangbooks> getAllexbooks() {
		List<exchangbooks> list = new ArrayList<exchangbooks>();
		exchangbooks book = null;
		
		try {
			String sql = "select * from exchangebook";
			PreparedStatement ps =  conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				book= new exchangbooks();
				
				book.setBookid(rs.getInt(1));
				book.setBookname(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setImage(rs.getString(4));
				book.setCategory(rs.getString(5));
				book.setDescription(rs.getString(6));
				
				list.add(book);
	
		
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<exchangbooks> getNewexBook() {
		List<exchangbooks> list = new ArrayList<exchangbooks>();
		exchangbooks book = null;
		
		try {
			String sql = "select * from exchangebook where status=? ";
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.setString(1, "New");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				book=new exchangbooks();
				book.setBookid(rs.getInt(1));
				book.setBookname(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setImage(rs.getString(4));
				book.setCategory(rs.getString(5));
				book.setDescription(rs.getString(6));
	
		
			}
			
	
		 
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		 
		return null;
	}

	@Override
	public exchangbooks getexbookById(int id) {
		exchangbooks book = null;
		
		try {
			String sql = "select * from exchangebook where bookId=?";
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				book=new exchangbooks();
				book.setBookid(rs.getInt(1));
				book.setBookname(rs.getString(2));
				book.setAuthor(rs.getString(3));
				
				book.setCategory(rs.getString(5));
				book.setImage(rs.getString(4));
				
				book.setDescription(rs.getString(6));
				
	
		
			}
			
	
		 
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return book;
	}
	
	
	
}
