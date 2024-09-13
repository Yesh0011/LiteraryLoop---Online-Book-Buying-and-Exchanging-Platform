package com.DAO;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DB.DBConnect;

import Controlcustomer.cart;
import Controlcustomer.sellingbooks;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			int bid =Integer.parseInt(request.getParameter("bookid"));
			
			BookDAOimplements dao = new BookDAOimplements(DBConnect.getConn());
			sellingbooks b =dao.getbookById(bid);
			
			cart c = new cart();
			c.setBookName(b.getBookname());
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotalprice(Double.parseDouble(b.getPrice()));
			
			CartDAOImpl dao2 = new CartDAOImpl(DBConnect.getConn());
			boolean f = dao2.addCart(c);
			
			if(f) {
				RequestDispatcher dis1 = request.getRequestDispatcher("Success.jsp");
				dis1.forward(request, response);
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
				dis2.forward(request, response);
			}
			
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
