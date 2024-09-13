package Controlcustomer;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;




@WebServlet("/addbooksell")
@MultipartConfig 
public class sellbookaddservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public sellbookaddservlet() {
    	
    }
        
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String bookname = request.getParameter("bname");
			String author = request.getParameter("author");
			String price = request.getParameter("price");
			String catrgory  = request.getParameter("cat");
			String nic = request.getParameter("nic");
			String phone = request.getParameter("phone");
			String status = request.getParameter("status");
			String dis = request.getParameter("dis");
			Part filePart = request.getPart("file");
			
			// Extracting file name from Content-Disposition header
		    String contentDisposition = filePart.getHeader("Content-Disposition");
		    String fileName = null;
		    if (contentDisposition != null && contentDisposition.contains("filename")) {
		        int startIndex = contentDisposition.indexOf("filename") + 10; // "filename=\"" is 10 characters long
		        int endIndex = contentDisposition.indexOf("\"", startIndex);
		        fileName = contentDisposition.substring(startIndex, endIndex);
		    }
			
		    
		    
			
		    boolean ifTrue;
			
			ifTrue = loginDBUtil.insertbookdata(bookname,author,price,catrgory,fileName,nic,phone,status,dis);
			
			if( ifTrue == true) {
				String path = getServletContext().getRealPath("")+"sellbooks";
				File file = new File(path);
				
				filePart.write(path + File.separator + fileName);
				
				RequestDispatcher dis1 = request.getRequestDispatcher("Success.jsp");
				dis1.forward(request, response);
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
				dis2.forward(request, response);
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
