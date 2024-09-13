<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="styles.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<style>
	.navigation a{
		color: white;
	}
	
	.wrapper{
	
	width:500px;
	}
	
	.wrapper .input-box{
	 
	 width:100%;
	
 	}
 
</style>

</head>
<body class="loginbody">
	<header class = "header2">
		<img src="Images/logo-no-background.png" height ="35rem" alt="Logo">
		<nav class="navigation">
			<a href ="#">Home</a>
			<a href ="#">About</a>
			<a href ="#">Popular Books</a>
			<a href ="#">Reviews</a>
			<a href ="#">Contact us</a>
		</nav>
		
	
	</header>

	

	<div class = "wrapper">
		<form action = "adminhome" method = "post">
		<h1>Admin Login</h1>
		<div class = "input-box">
			<input type="text" placeholder="  Username" name="uid" required>
			<i class='bx bxs-user'></i>
		</div>
		<div class ="input-box">
			<input type = "password" placeholder="  Password" name = "pass" required>
			<i class='bx bxs-lock-alt'></i>
		</div>
		<br>
		<div class="remember-forgot">
			<label><input type = "checkbox" > Remember me</label>
			<a href="#">Forgot password</a>
		</div>
		
		
		<center><input type = "submit" class = "btn" name="submit" value="Login"></center>
		<br><br>
		
	</form>
	
	</div>

	

</body>
</html>