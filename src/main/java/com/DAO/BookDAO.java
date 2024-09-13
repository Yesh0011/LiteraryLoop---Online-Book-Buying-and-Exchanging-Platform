package com.DAO;

import java.util.List;

import Controlcustomer.sellingbooks;

public interface BookDAO {
	public List<sellingbooks> getAllbooks();
	
	public List<sellingbooks> getNewBook();
	
	public sellingbooks getbookById(int id);
	
	public List<exchangbooks> getAllexbooks();
	
	public List<exchangbooks> getNewexBook();
	
	public exchangbooks getexbookById(int id);
	
}
