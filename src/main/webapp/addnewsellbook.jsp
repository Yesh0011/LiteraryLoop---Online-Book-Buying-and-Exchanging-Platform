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

 body {
        
        background-color: #f0f0f0;
    }
    
	.navigation a{
		color: white;
	}
	
	
 }
	
	 .wrapper{
	 width: 100%;
	 background: tranaparent;
	 border: 2px solid black;
	 color: black;
	 border-radius: 10px;
	 padding: 30px 40px;
	 max-width: 800px;
	 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1)
	 
 }
 
	
	 .input-box input{
	 width:100%;
	 height: 100%;
	 background: rgb(193, 183, 190);
	 border: none;
	 outline: none;
	 border: 2px solid black;
	 border-radius: 40px;
	 font-size: 16px;
	 color : black;
	 margin-right: 10px;
     
	 
 }
 
  
 
 .input-boxdis textarea {
    width: 100%;
    height: 150px; /* Adjust the height as needed */
    background: rgb(193, 183, 190);
    border: none;
    outline: none;
    border: 2px solid black;
    border-radius: 40px;
    font-size: 16px;
    color: black;
    margin-right: 10px;
    padding: 10px; /* Add padding for better appearance */
    resize: vertical; /* Allow vertical resizing */
}

 .input-boxdis textarea::placeholder{
	 color:black;
	 margin-right: 10px;
	 align-items: flex-start;
	 margin-top: 20px;
 }
 
 .wrapper h1{
	 font-size: 36px;
	 text-align: center;
	 color:black;
 } 
 
 
 
 .lable{
	 width:100%;
	 height: 100%;
	 background: rgb(193, 183, 190);
	 border: none;
	 outline: none;
	 border: 2px solid black;
	 border-radius: 40px;
	 font-size: 16px;
	 color : black;
	 margin-right: 10px;
	 
	 
	 	 
 }
 

    
	
	.header2{
		background-color:#0d063a;
	
	}
	
	.input-box input::placeholder{
	 color:black;
	 
	 } 
	 
	 .input-box inputdis::placeholder{
	 color:black;
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
		<img src="Images/logo-no-background.png" height ="35rem" alt="Logo">
		<nav class="navigation">
			<a href="reghome.jsp">Home</a>
        <a href="reghome.jsp#about">About</a>
        <a href="reghome.jsp#popularbooks">Popular Books</a>
        <a href="reghome.jsp#reviews">Reviews</a>
        <a href="home.jsp#contact">Contact us</a>
        <a href="viewexchangebooks.jsp">Library</a>
        <a href="viewallselbooks.jsp" >Store</a>
		</nav>
		
	
	</header><br><br><br><br>
	
<center>
<br><br>

<div class = "wrapper">
		<form action = "addbook" method = "post" enctype="multipart/form-data">
		<h1>Add New Book</h1><br>
		<div class="input-row">
            <div class="input-box"> 
                <input type="text" placeholder="   Book Name" name="bname" required>
                <i class='bx bx-book-open' ></i>
            </div>&nbsp&nbsp&nbsp&nbsp
            
            <div class="input-box">
                <input type="text" placeholder="    Author Name" name="author" required>
                <i class='bx bxs-user'></i>
            </div>
        </div>
        
        <div class="input-row">
            <div class="input-box">
                <input type="text" placeholder="   Price" name="price" required>
                <i class='bx bxs-badge-dollar' ></i>
            </div>&nbsp&nbsp&nbsp&nbsp
            <div class="input-box">
                <input type="text" placeholder="   Category" name="cat" required>
                <i class='bx bx-category' ></i>
            </div>
        </div>
        
         <div class="input-row">
            <div class="input-box">
                <input type="text" placeholder="   Your NIC" name="nic" required>
                <i class='bx bxs-purchase-tag-alt' ></i>
            </div>&nbsp&nbsp&nbsp&nbsp
            <div class="input-box">
                <input type="text" placeholder="   Your contact number" name="phone" required>
                <i class='bx bxs-phone' ></i>
            </div>
        </div>
        
        
            <div class="input-box">
                <input type="text" placeholder="   Status" name="status" required>
                <i class='bx bxl-sketch' ></i>
            </div>
            
            <div class="input-boxdis" >
                <textarea  placeholder="   Book Description" name="dis" required></textarea>
                
            </div>
            
            <div class="input-row">
            <div class="lable"><br>
                <label  class ="lablefix" for="image" > Image&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>&nbsp
					<input type="file" name="file">
   					
				
            </div>
           
        </div>
        
        
        
        
		
		
		<br>
		<center>
		<input type = "submit" class = "btn" name="submit" value="Add Book"></center>
		<br>
		
	</form>
	
	</div>
	
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