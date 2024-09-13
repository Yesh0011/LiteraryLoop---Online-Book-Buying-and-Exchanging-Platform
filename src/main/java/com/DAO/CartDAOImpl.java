package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Controlcustomer.cart;
import Controlcustomer.sellingbooks;

public class CartDAOImpl implements CartDAO {
	
	private Connection conn;
	

	public CartDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	@Override
	public boolean addCart(cart c) {
		boolean f = false;
		try{
			String sql = "insert into cart(cartid,bookname,price,totalprice)values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, c.getCid());
			ps.setString(2, c.getBookName());
			ps.setDouble(3, c.getPrice());
			ps.setDouble(4, c.getTotalprice());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f= true;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return f;
	}


	@Override
	public List<cart> getAllcart() {
		List<cart> list = new ArrayList<cart>();
		
		
		try {
			String sql = "select * from cart";
			PreparedStatement ps =  conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				cart cart = new cart();
				cart.setCid(rs.getInt(1));   
				cart.setBookName(rs.getString(2));
				cart.setPrice(rs.getDouble(3));
				list.add(cart);

			}
			
	
		 
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	

}
