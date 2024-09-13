<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("id");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String username = request.getParameter("uid");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String district = request.getParameter("district");
    String postalcode = request.getParameter("postalcode");

%>

<form action = "updateuserservlet" method ="post">
	 Customer Id  <input type = "text" name= "cid" value="<%= id %>" readonly><br>
	First Name  <input type = "text" name= "fname" value="<%= fname %>"><br>
	Last Name  <input type = "text" name= "lname" value="<%= lname %>"><br>
	email  <input type = "text" name= "email" value="<%= email %>"><br>
	Phone Number  <input type = "text" name= "phone" value="<%= phone %>"><br>
    User Name <input type = "text" name= "uid" value="<%= username %>"><br>
	Password <input type = "password" name= "password" value="<%= password %>"><br>
	Gender <input type = "text" name= "gender" value="<%= gender %>"><br>
	Address <input type = "text" name= "address" value="<%= address %>"><br>
	District <input type = "text" name= "district" value="<%= district %>"><br>
	Postalcode <input type = "text" name= "postalcode" value="<%= postalcode %>"><br>
	
	<input type = "submit" name="submit" value="Update Profile"><br>
	




</form>

</body>
</html>