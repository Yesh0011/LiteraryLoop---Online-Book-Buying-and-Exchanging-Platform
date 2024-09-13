<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOimplements"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.exchangbooks"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles.css">

<style>

.navigation a{
		color: black;
		
	}
	
	.header2{
	 
	 background-color: #d5ddff;
	 
 }
    /* Define classes for table styles */
    .book-table {
        width: 90%;
        border-collapse: collapse;
        border-radius: 10px; /* Rounded corners for the table */
        overflow: hidden; 
        margin-left: 50px;
        margin-right: 50px;
        margin-top: 50px;
        /* Ensure rounded corners are applied properly */
    }
    .book-table th, .book-table td {
        padding: 8px;
        border: 1px solid #ddd;
        text-align: left;
    }
    .book-table th {
        background-color: #2B124C; /* Background color for table header */
        color: white; /* Text color for table header */
        font-weight: bold;
    }
    .book-table img {
        width: 50px;
        height: 50px;
    }
    
    .footer{
  width:100%;
  position:relative;
  bottom:0;
  background:linear-gradient(to left, var(--color-secondary), rgb(83, 5, 143));
  color:#fff;
  padding:25px 0 5px;
  border-top-left-radius: 125px;
  font-size:13px;
  line-height:20px;
}
.row{
  width:auto;
  margin:auto;
  display:flex;
  flex-wrap:wrap;
  align-items:center;
  justify-content:space-between;
}
.col{
  flex-basis:8%;
  margin-right:200px;
}
.logo{
  width:150px;
  margin-bottom: 20px;
}
.col h3{
  width:fit-content;
  margin-bottom:40px;
  position: relative;
}
email-id{
  width:fit-content;
  border-bottom:1px solid #ccc;
  margin: 20px 0;
}
ul li{
  list-style: none;
  margin-bottom: 12px;
}
ul li a{
  text-decoration: none;
  color:white;
}
hr{
  width:90%;
  border:0;
  border-bottom: 1px solid #ccc;
  margin:20px auto;
}
.copyright{
  text-align: center;
}

</style>

</head>
<body>

<header class = "header2">
		<img src="Images/logodark.png" height ="35rem" alt="Logo">
		<nav class="navigation">
			<a href ="Adminhome.jsp">Admin Home</a>
			<a href ="Addexchangebook.jsp">Add New Book</a>
			<a href ="allexbooks.jsp">Manage Library</a>
			<a href ="reghome.jsp#reviews">Reviews</a>
			<a href ="allsellbooks.jsp">Manage Store</a>
			<a href ="#">Pending Orders</a>
			
		</nav>
		
	
	</header><br><br><br><br><br><br><br>
	<center>
	<h1>Available books in the Library</h1>
	</center>
	<table class="book-table">
		<thead>
		<tr>
			 <th>Image</th>
			 <th>Book Name</th>
			 <th>Author</th>
			 
			 <th>Category</th>
			 
			 <th>description</th>
		</tr>
		</thead>
		
		
		<tbody>
		<%
		BookDAOimplements dao = new BookDAOimplements(DBConnect.getConn());
		List<exchangbooks> list = dao.getAllexbooks();
		for(exchangbooks book:list){
		%>	
		<tr>
			 
			 <td><center><img src ="exbooks/<%=book.getImage()%>"
			 style="width:100px;height:100px;"></center></td>
			 <td><%=book.getBookname() %></td>
			 <td><%=book.getAuthor() %></td>
			 
			 <td><%=book.getCategory() %></td>
			 
			 <td><%=book.getDescription() %></td>
			 
		</tr>
		<%
		}
			
		%>
		
		
		</tbody>
	</table>
	
	<br><br><br>
	
<div class="footer">
            <div class="row">
                <div class="col" style="margin-left: 75px;">
                <image src="Images/logo-no-background.png" class="logo">
                <p>
                    Embrace the Beauty of Physical Books with Literary Loop
                </p>
            </div>
            <div class="col">
                <h3>office</h3>
                <p>35/F4,First Lane</p>
                <p>Lake road</p>
                <p>Boralesgamuwa</p><br>
                <p class="email-id">as2020978@sci.sjp.ac.lk</p>
                <p class="email-id">as2020979@sci.sjp.ac.lk</p><br>
                <h4>+94 - 0779679922</h4>
            </div>
            <div class="col">
            <h3>Links</h3>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About Us</a></li>
                <li><a href="#popularbooks">Popular Books</a></li>
                <li><a href="#reviews">Reviews</a></li>
                <li><a href="#Contact">Contact</a></li>
            </ul>
            </div>
            <div class="col">
                <h3>Follow Us</h3>
                <img src="Images/fb.png" alt="Facebook Icon" style="width: 30px; height: 30px;">&nbsp&nbsp&nbsp
   				<img src="Images/wa.png" alt="Instagram Icon" style="width: 30px; height: 30px;">&nbsp&nbsp&nbsp
   				<img src="Images/ig.png" alt="Instagram Icon" style="width: 30px; height: 30px;">
            </div>
            </div>
            <hr>
            <p class="copyright">literary Loop © 2024 - All Rights Reserved</p>
        </div>
</body>
</html>