package com.DAO;

import java.util.List;

import Controlcustomer.cart;
import Controlcustomer.sellingbooks;

public interface CartDAO {
	public boolean addCart(cart c);
	
	public List<cart> getAllcart();
}
