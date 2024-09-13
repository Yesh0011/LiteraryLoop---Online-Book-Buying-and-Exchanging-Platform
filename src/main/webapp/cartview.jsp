<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.DAO.CartDAO"%>
<%@page import="Controlcustomer.cart"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title</title>
    <link rel="stylesheet" href="animation.css">
    <link rel="stylesheet" href="styles.css">
    <style>
    
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

    
    .wrapper{
	 width: 100%;
	 background: transparent;
	 border: 2px solid black;
	 color: black;
	 border-radius: 10px;
	 padding: 30px 40px;
	 max-width: 800px;
	 
	 
 }
 
 .input-box input{
	 width:100%;
	 height: 100%;
	 background: transparent;
	 border: none;
	 outline: none;
	 border: 2px solid black;
	 border-radius: 40px;
	 font-size: 16px;
	 color : white;
	 margin-right: 10px;
     
	 
 }
 
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #d5ddff;
    }

    header {
        background-color: #333;
        color: #fff;
        padding: 10px;
    }

    .navbar ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

    .navbar li {
        display: inline;
        margin-right: 10px;
    }

    .main-content {
        display: flex;
        justify-content: space-between;
        padding: 20px;
    }

    .table-section {
        flex: 1;
        margin-right:500px;
        margin-bottom: 20px; /* Add bottom margin for distance */
    }

    .table-section h2 {
        margin-bottom: 10px;
    }

    form {
        max-width: 400px;
    }

    .form-section {
        margin-bottom: 20px; /* Add bottom margin for distance */
    }

    .label-block {
        display: block;
        margin-bottom: 5px;
    }

    .input-block {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    button {
        background-color: #333;
        color: #fff;
        padding: 8px 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    /* Style for the table with borders */
    .styled-table {
        border-collapse: collapse;
        width: 350px;
    }

    /* Style for table header */
    .styled-table th {
        background-color: purple; /* Header background color */
        color: #fff; /* Header text color */
        font-weight: bold;
        padding: 8px; /* Add padding to header cells */
        border: 1px solid #ddd; /* Add border to header cells */
    }

    /* Style for table cells */
    .styled-table td {
        padding: 8px; /* Add padding to cells */
        border: 1px solid #ddd; /* Add border to cells */
    }

    /* Style for alternating rows */
    .styled-table tbody tr:nth-child(even) {
        background-color: #f2f2f2; /* Alternate row background color */
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
            <a href="reghome.jsp#contact">Contact us</a>
            <a href="viewallselbooks.jsp">Library</a>
            <a href="viewexchangebooks.jsp">Store</a>
        </nav>
    </header>

    <div class="main-content">
        <div class="table-section">
            <h2>Your Cart</h2>
            <table class="styled-table">
                <thead>
                    <tr>
                        <th>Book Name</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody>
                    <% CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
                    List<cart> list = dao.getAllcart();
                    int total = 0;
                    for(cart cart:list){
                        total += cart.getPrice(); %>	
                        <tr>
                            <td><%=cart.getBookName() %></td>
                            <td><%=cart.getPrice() %></td>
                        </tr>
                    <% } %>
                    <tr>
                        <td colspan="1"><strong>Total:</strong></td>
                        <td><%= total %></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="form-section">
            <div class="wrapper">
                <h2 class="form-title">Add Your Details</h2><br>
                <form action="payment" method="POST" class="payment-form">
                    <div class="input-box">
                        <label for="name" class="form-label">Name:</label>
                        <input type="text" id="name" name="name" class="form-input" required>
                    </div>
                    <br>
                    <div class="input-box">
                        <label for="address" class="form-label">Address:</label>
                        <input type="text" id="address" name="address" class="form-input" required>
                    </div>
                    <br>
                    <div class="input-box">
                        <label for="contact" class="form-label">Contact Number:</label>
                        <input type="text" id="contact" name="contact" class="form-input" required><br>
                    </div>
                    <br><br>
                    <input type="hidden" id="total" name="total" value="<%= total %>" class="hidden-input">
                    <input type="submit" name="submit" value="Pay" class="btn">
                </form>
            </div>
        </div>
    </div>

   
</body>
</html>
