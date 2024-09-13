<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOimplements"%>
<%@page import="com.DAO.exchangbooks"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="headerandfooter.css">


<style>
    /* Center the table within the page */
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        background-color: #f0f0f0; /* Optional background color */
    }

    /* Style for the table */
    table {
        width: 90%; /* Adjust the table width as needed */
        /* Maximum width of the table */
        border-collapse: collapse;
        border-radius: 10px;
        overflow: hidden; /* Hide overflowing content */
    }
    
    h2{
    	color: #2B124C;
    }

    td {
        text-align: center;
        padding: 10px;
        border: 1px solid purple; /* Border color */
    }

    img {
        width: 80px; /* Adjust image width as needed */
        height: auto; /* Maintain aspect ratio */
        border: 1px solid black; /* Add border to images */
    }

    .icon-container {
        display: flex;
        justify-content: center; /* Center items horizontally */
        margin-bottom: 10px; /* Add margin between icon containers */
         border-radius: 10px;
    }

    .icon-container div {
        text-align: center; /* Center text within each icon container */
        margin: 0 20px; /* Add margin around each icon container */
         border-radius: 10px;
    }

    .icon {
        width: 40px; /* Adjust icon size as needed */
        height: 40px; /* Adjust icon size as needed */
        margin-bottom: 5px; /* Add margin below each icon */
         border-radius: 10px;
    }
    
    .icon-container p {
        font-size: 15px; /* Adjust the font size as needed */
    }
    

    .btn {
        background-color: #2B124C;
	    font-size:21px;
	    color: white;
	    border: none;
	    padding: 10px 30px;
	    border-radius: 20px;
	    cursor: pointer;
    }
</style>
</head>
<body>

<header class = "header">
		<a href="#" class="logo">
            <img src="Images/logo-no-background.png" alt="Logo">
        </a>
		<nav class="navigation">
			<a href="reghome.jsp">Home</a>
	        <a href="reghome.jsp#about">About</a>
	        <a href="reghome.jsp#popularbooks">Popular Books</a>
	        <a href="reghome.jsp#reviews">Reviews</a>
	        <a href="reghome.jsp#contact">Contact us</a>
	        <a href="viewexchangebooks.jsp">Library</a>
	        <a href="viewallselbooks.jsp">Store</a> 
		</nav>
		
	
	</header><br><br><br><br>
	

	<%
		int bookid =Integer.parseInt(request.getParameter("bookid")) ;
		BookDAOimplements dao = new BookDAOimplements(DBConnect.getConn());
		exchangbooks b =dao.getexbookById(bookid);
	
	%>
    <table>
        <tr>
            <!-- First Column: Image, Name with h2, and Two Text Rows -->
            <td style="width: 50%;">
                <!-- Image aligned to center -->
                <br><br><img src ="exbooks/<%=b.getImage()%>"
			 style="width:250px;height:250px;">
                <!-- Name with h2 -->
                <h2>Book Name : <%= b.getBookname() %></h2>
                <!-- Text rows -->
                <p>Author:  <%= b.getAuthor() %> </p>
                
            </td>
            <!-- Second Column: Bigger Text, Icons, Text Line, and Button -->
            <td style="width: 50%;">
                <!-- Bigger text with line break -->
                <h2><%= b.getBookname() %></h2><br>
                <!-- Icon containers with text -->
                <div class="icon-container">
                    <div>
                        <img src="Images/shipping.png" alt="Icon 1" class="icon">
                        <p>Free Shipping</p>
                    </div>
                    <div>
                        <img src="Images/return.png" alt="Icon 2" class="icon">
                        <p>Return for new book</p>
                    </div>
                </div>
                <!-- Text line after break -->
                
                <p style="font-size: 24px; color: #2B124C; font-weight: bold;"> <%= b.getCategory() %></p>
                <!-- Button -->
                <br><br><a href="CartServlet?bookid=<%=b.getBookid()%>" class="btn">Exchange</a>
            </td>
        </tr>
    </table>
</body>
</html>
