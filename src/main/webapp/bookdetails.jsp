<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOimplements"%>
<%@page import="Controlcustomer.sellingbooks"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="headerandfooter.css">
<link rel="stylesheet" href="style.css">


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
        width: 85%; /* Adjust the table width as needed */
        /* Maximum width of the table */
        border-collapse: collapse;
        border-radius: 10px;
        overflow: hidden; /* Hide overflowing content */
        margin-top: 20px; /* Add margin from the top */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add box shadow for depth */
    }
    
    h2 {
        color: #2B124C;
        margin-bottom: 10px; /* Add margin below h2 */
    }

    td {
        text-align: center;
        padding: 20px; /* Increase padding for better spacing */
        border: 1px solid purple; /* Border color */
    }

    img {
        width: 80px; /* Adjust image width as needed */
        height: auto; /* Maintain aspect ratio */
        border: 1px solid black; /* Add border to images */
        border-radius: 20%; /* Make the image circular */
    }

    .icon-container {
        display: flex;
        justify-content: center; /* Center items horizontally */
        margin-bottom: 20px; /* Add margin between icon containers */
    }

    .icon-container div {
        text-align: center; /* Center text within each icon container */
        margin: 0 30px; /* Add margin around each icon container */
    }

    .icon {
        width: 60px; /* Adjust icon size as needed */
        height: 60px; /* Adjust icon size as needed */
        margin-bottom: 10px; /* Add margin below each icon */
    }
    
    .icon-container p {
        font-size: 16px; /* Adjust the font size as needed */
        color: #555; /* Change text color for icons */
        margin-top: 5px; /* Add margin above text */
    }

    .btn {
        background-color: #2B124C;
        font-size: 21px;
        color: white;
        border: none;
        padding: 15px 40px; /* Increase padding for better button size */
        border-radius: 30px; /* Adjust border radius for a rounder button */
        cursor: pointer;
        margin-top: 20px; /* Add margin from the top */
        display: inline-block; /* Ensure button stays in line */
        text-decoration: none; /* Remove underline */
    
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
	        <a href="viewallselbooks.jsp" class="store">Store</a> 
		</nav>
		
	
	</header><br><br><br><br> 
	

	<%
		int bookid =Integer.parseInt(request.getParameter("bookid")) ;
		BookDAOimplements dao = new BookDAOimplements(DBConnect.getConn());
		sellingbooks b =dao.getbookById(bookid);
	
	%>
    <table>
        <tr>
            <!-- First Column: Image, Name with h2, and Two Text Rows -->
            <td style="width: 50%;">
                <!-- Image aligned to center -->
                <br><br><img src ="sellbooks/<%=b.getImage()%>"
			 style="width:250px;height:250px;">
                <!-- Name with h2 -->
                <h2>Book Name : <%= b.getBookname() %></h2>
                <!-- Text rows -->
                <p>Author:  <%= b.getAuthor() %> </p>
                <p>Status :  <%= b.getStatus() %></p>
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
                        <p>Returns Available</p>
                    </div>
                    <div>
                        <img src="Images/cod.png" alt="Icon 3" class="icon">
                        <p>Cash on Delivery</p>
                    </div>
                </div>
                <!-- Text line after break -->
                
                <p style="font-size: 24px; color: #2B124C; font-weight: bold;"> Rs .<%= b.getPrice() %></p>
                <!-- Button -->
                <br><br><a href="CartServlet?bookid=<%=b.getBookid()%>" class="btn">Add to Cart</a>
            </td>
        </tr>
    </table>
</body>
</html>
