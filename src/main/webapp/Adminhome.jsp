<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">

<style>
	.popularbooks .box-container .box img{
		  height: 16rem;
		  width: 15rem;
		  border-radius: 20px;
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

		<div class="header">
		        <a href="#" class="logo">
		            <img src="Images/logo-no-background.png" alt="Logo">
		        </a>
		
		        <nav class="navbar">
		            <a href ="Adminhome.jsp">Admin Home</a>
			<a href ="Addexchangebook.jsp">Add New Book</a>
			<a href ="allexbooks.jsp">Manage Library</a>
			<a href ="reghome.jsp#reviews">Reviews</a>
			<a href ="allsellbooks.jsp">Manage Store</a>
			<a href ="#">Pending Orders</a>
		
		        </nav>
		        <br>  
		        
		            
		
		</div><br><br><br><br><br><br><br><br>
		
		<section class="popularbooks" id="popularbooks">
        <h1 class="heap">Admin <span>Home</span></h1><br>
        <div class="box-container">
            <div class="box">
                <img src="Images/exchangebookicon.png" alt="1"><br><br><br>
                <h2>Add Exchanging Book</h2><br>
                
                <a href="Addexchangebook.jsp" class="btn">Details</a>
            </div>
            <div class="box">
                <img src="Images/lib.png" alt="2"><br><br><br>
                <h2>Manage Library</h2><br>
                
                <a href="allexbooks.jsp" class="btn">Details</a>
            </div>
            <div class="box">
                <img src="Images/pendingordersicon.png" alt="3"><br><br><br>
                <h2>Pending Order Request</h2><br>
                
                <a href="#" class="btn">Details</a>
            </div>
            <div class="box">
                <img src="Images/store.png" alt="1"><br><br><br>
                <h2>Manage store</h2><br>
                
                <a href="allsellbooks.jsp" class="btn">Details</a>
            </div>
        </div>
    </section> 




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