package Controlcustomer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminloginServlet")
public class AdminloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String uid = request.getParameter("uid");
			String password = request.getParameter("pass");
			
			if("admin1090".equals(uid)&& "ad1090".equals(password)) {
				response.sendRedirect("Adminhome.jsp");
			}
			else {
				response.sendRedirect("Unsuccess.jsp");
			}
					
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
