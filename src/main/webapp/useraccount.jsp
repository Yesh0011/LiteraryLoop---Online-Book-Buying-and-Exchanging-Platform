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
	
	.container {
        display: flex;
        justify-content: center;
        align-items: flex-start;
        background-color: transparent;
        margin-top:130px;
        border-radius: 40px;
        width: 1200px;
        height: 550px;
    }

    .left-section {
        flex: 1;
        padding: 20px;
        box-sizing: border-box;
    }

    .right-section {
        flex: 2;
        padding: 20px;
        box-sizing: border-box;
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
<body class = "profilebody">

<header class = "header2">
		<img src="Images/logodark.png" height ="35rem" alt="Logo">
		<nav class="navigation">
			<a href="reghome.jsp">Home</a>
	        <a href="reghome.jsp#about">About</a>
	        <a href="reghome.jsp#popularbooks">Popular Books</a>
	        <a href="reghome.jsp#reviews">Reviews</a>
	        <a href="reghome.jsp#contact">Contact us</a>
	        <a href="viewexchangebooks.jsp">Library</a>
	        <a href="viewallselbooks.jsp" class="store">Store</a> 
		</nav>
		
	
	</header>

    
    
<center>



	
	<div class="container"><br><br>
	
	
		<c:forEach var="customer" items="${cusDetails}">
		<c:set var ="id" value="${customer.id}"/>
		<c:set var ="fname" value="${customer.fname}"/>
		<c:set var ="lname" value="${customer.lname}"/>
		<c:set var ="email" value="${customer.email}"/>
		<c:set var ="phone" value="${customer.phone}"/>
		<c:set var ="username" value="${customer.userName}"/>
		
		<c:set var ="password" value="${customer.password}"/>
		<c:set var ="gender" value="${customer.gender}"/>
		<c:set var ="address" value="${customer.address}"/>
		<c:set var ="district" value="${customer.district}"/>
		<c:set var ="postalcode" value="${customer.postalcode}"/>
		
		
        <div class="left-section">
        	<br><br><br>
        	
            <img src="Images/profileimg.png"  alt="profile"><br><br>
            <center><h1>${customer.fname} ${customer.lname}</h1></center>
        </div>
        
        <div class="right-section">
	
			<table class="styled-table2">
			
			
			
			<tbody>
			
			<tr>
		            <td>User Id              </td>
		            <td>${customer.id}</td>
		    </tr>
		    
		    <tr class="active-row">
		            <td>Full Name             </td>
		            <td>${customer.fname} ${customer.lname} </td>
		    </tr>
		    
		    <tr >
		            <td>Email             </td>
		            <td>${customer.email}</td>
		    </tr>
		    
		   
		    
		    <tr class="active-row">
		            <td>Phone Number              </td>
		            <td>${customer.phone}</td>
		    </tr>
		    
		    <tr >
		            <td>Gender              </td>
		            <td>${customer.gender}</td>
		    </tr>
		    
		    <tr class="active-row">
		            <td>Address              </td>
		            <td>${customer.address},<br>${customer.district},<br>${customer.postalcode}</td>
		    </tr>
		    
		    <tr >
		            <td>User Name              </td>
		            <td>${customer.userName}</td>
		    </tr>
		    
		    <tr class="active-row">
		            <td>Password              </td>
		            <td>${customer.password}</td>
		    </tr>  
		    
		    
			</tbody>
	        </c:forEach>
            </table>
            
            <c:url value = "updateuser.jsp" var="updatecus">
            	<c:param name ="id" value="${id}"/>
				<c:param name = "fname" value="${fname}"/>
				<c:param name ="lname" value="${lname}"/>
				<c:param name  ="email" value="${email}"/>
				<c:param name  ="phone" value="${phone}"/>
				<c:param name  ="username" value="${userName}"/>
				
				<c:param name  ="password" value="${password}"/>
				<c:param name  ="gender" value="${gender}"/>
				<c:param name  ="address" value="${address}"/>
				<c:param name  ="district" value="${district}"/>
				<c:param name  ="postalcode" value="${postalcode}"/>
            	
            </c:url>
            
            
            <div class="wrapper">
            <a href ="${updatecus} ">
            <input type = "button" class = "btn"  name="Upadate" value="Update Profile">
         </a></div></div></div>
</center><br><br><br>
	

</body>
</html>