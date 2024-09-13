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
	
	.header2{
		background-color:#0d063a;
	
	}
	
	
	
	.wrapper{
		margin-top: 150px;
		background-color: rgba(255, 255, 255, 0.1);
	}
</style>

</head>
<body class="loginbody">
	<header class = "header2">
		<img src="Images/logo-no-background.png" height ="35rem" alt="Logo">
		<nav class="navigation">
			<a href ="home.jsp">Home</a>
			<a href ="home.jsp#about">About</a>
			<a href ="home.jsp#popularbooks">Popular Books</a>
			<a href ="home.jsp#reviews">Reviews</a>
			<a href ="home.jsp#contact">Contact us</a>
		</nav>
		
	
	</header>

	

	<div class = "wrapper">
		<form action = "register" method = "post">
		<h1>Register</h1><br>
		<div class="input-row">
            <div class="input-box"> 
                <input type="text" placeholder="   First Name" name="fname" required>
                <i class='bx bxs-user'></i>
            </div>&nbsp&nbsp&nbsp&nbsp
            
            <div class="input-box">
                <input type="text" placeholder="    Last Name" name="lname" required>
                <i class='bx bxs-user'></i>
            </div>
        </div>
        
        <div class="input-row">
            <div class="input-box">
                <input type="text" placeholder="   Email" name="email" required>
                <i class='bx bxs-envelope' ></i>
            </div>&nbsp&nbsp&nbsp&nbsp
            <div class="input-box">
                <input type="text" placeholder="   Phone Number" name="phone" required>
                <i class='bx bxs-phone' ></i>
            </div>
        </div>
        
         <div class="input-row">
            <div class="input-box">
                <input type="text" placeholder="   Address" name="address" required>
                <i class='bx bx-home' ></i>
            </div>&nbsp&nbsp&nbsp&nbsp
            <div class="input-box">
                <input type="text" placeholder="   District" name="district" required>
                <i class='bx bx-map' ></i>
            </div>
        </div>
        
        <div class="input-row">
            <div class="lable">
                <label  class ="lablefix" for="gender" >&nbsp&nbsp Gender</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<select name="gender">
				  <option class= "option" value="f">Female</option>
				  <option class= "option" value="m">Male</option>
				  
				</select>
				
            </div>&nbsp&nbsp&nbsp&nbsp
            <div class="input-box">
                <input type="text" placeholder="   Postal Code" name="postalcode" required>
                <i class='bx bxl-product-hunt' ></i>
            </div>
        </div>
        
        <div class="input-row">
            <div class="input-box">
                <input type="text" placeholder="   Username" name="uid" required>
                <i class='bx bxs-user-circle' ></i>
            </div>&nbsp&nbsp&nbsp&nbsp
            <div class="input-box">
                <input type="password" placeholder="   Password" name="pass" required>
                <i class='bx bxs-lock-open-alt' ></i>
            </div>
        </div>
        
		
		
		<br>
		<center>
		<input type = "submit" class = "btn" name="submit" value="Register"></center>
		<br>
		
	</form>
	
	</div>
	
	

	

</body>
</html>