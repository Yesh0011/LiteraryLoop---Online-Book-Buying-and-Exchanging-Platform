<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOimplements"%>
<%@page import="java.util.List"%>
<%@page import="Controlcustomer.sellingbooks"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="animation.css">

<style>

.header2{
		background-color:rgb(48, 20, 84);
	
	}

.navigation a {
    color: white;
    font-size: 17px; /* Adjust the font size as needed */
    text-decoration: none; /* Remove default underline for all links */
}

.navigation a.store {
    text-decoration: underline; /* Add underline only for the Store link */
}

.popularbooks {
    display: flex;
    flex-wrap: wrap;
    margin-top: 10px;
    justify-content: flex-start; /* Align items to the start of the container */
}

.popularbooks .box-container .box img {
    height: 16rem;
    width: 15rem;
    border-radius: 20px;
}

.box-container {
    width: 25%;
    box-sizing: border-box;
    padding: 10px;
}

.box {
    border: 1px solid #ddd;
    border-radius: 20px;
    padding: 10px;
    margin-bottom: 20px;
}

.heap {
    text-align: center;
    margin-top: 20px;
    clear: both; /* Clear floating elements */
}

.box img {
    height: 150px;
    width: 100%;
    border-radius: 20px;
    margin-bottom: 10px;
}

.box h2, .box h3 {
    margin-bottom: 5px;
}
</style>
</head>
<body>
<header class="header2">
    <img src="Images/logo-no-background.png" height="35rem" alt="Logo">
    <nav class="navigation">
        <a href="reghome.jsp">Home</a>
        <a href="reghome.jsp#about">About</a>
        <a href="reghome.jsp#popularbooks">Popular Books</a>
        <a href="reghome.jsp#reviews">Reviews</a>
        <a href="home.jsp#contact">Contact us</a>
        <a href="viewexchangebooks.jsp">Library</a>
        <a href="viewallselbooks.jsp" class="store">Store</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        
        <button type="button" class="btn" id="profile">
    Add New Book
</button>

<script>
    document.getElementById("profile").addEventListener("click", function() {
        window.location.href = "addnewsellbook.jsp";
    });
</script> <!-- Add "store" class to the Store link -->
    </nav>
</header><br><br>



<div class="popularbooks" id="popularbooks">
<%
    BookDAOimplements dao = new BookDAOimplements(DBConnect.getConn());
    List<sellingbooks> list = dao.getAllbooks();
    for(sellingbooks book:list){
%>      
    <div class="box-container">
        <div class="box">
            <img src="sellbooks/<%=book.getImage()%>" alt="<%=book.getBookname()%>">
            <h2><%=book.getBookname()%></h2>
            <h3><%=book.getPrice()%></h3>
            <a href="bookdetails.jsp?bookid=<%=book.getBookid()%>" class="btn">Details</a>
        </div>
    </div>
<% } %>     
</div>

</body>
</html>
