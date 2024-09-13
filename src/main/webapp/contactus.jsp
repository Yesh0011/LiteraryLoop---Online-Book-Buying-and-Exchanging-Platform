<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles.css">
<style>
	*{
		margin:0;
		padding:0;
	}
	
	body{
	background: url(Images/progileback.png) no-repeat;
	}
	
	.sectionform{
		display:flex;
		justify-content: center;
		align-items: center;
        min-height:100vh;
        /width:100%;/
        background:Images/progileback.png) no-repeat;
        background-size:cover;
        background-position:center;
		}
		
		.header2{
		 background-color : #d5ddff;
	 
	 
 		}
 		
 		.navigation a{
 		color:black;
 		}
		
    .form-box{
        position:relative;
        width:400px;
        height:520px;
        background:transparent;
        border:2px solid slateblue;
        border-radius: 20px;
        backdrop-filter:blur(15px);
        display:flex;
        justify-content:center;
        align-items:center;
    }
    h2{
        font-size:2em;
        color:#411778;
        text-align: center;
    }
    .inputbox{
        position:relative;
        margin: 30px 0;
        width: 310px;
        border-bottom: 2px solid #822B5B;
      }
      .inputbox label{
        position:absolute;
        top:50%;
        left:5px;
        transform:translateY(-50%);
        Color:#822B5B; 
        font-size:1em;
        pointer-events:none;
        transition: .5s;
    }
    input:focus ~ label,
    input:valid ~ label{
        top:-5px;
    }
    .inputbox input{
        width:100%;
        height:50px;
        background:transparent;
        border:none;
        outline:none;
        font-size:1em;
        padding:0 35px 0 5px;
        color:#822B5B;
    }
    #submit{
        font-family: sans-serif;
        color: #411778;
        margin-left: 75px;
        width:50%;
        height:40px;
        border-radius: 40px;
        background:white;
        border: none;
        outline: none;
        cursor:pointer;
        font-size: 1em;
        font-weight:600;
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<header class = "header2">
		<img src="Images/logodark.png" height ="35rem" alt="Logo">
		<nav class="navigation">
			<a href="reghome.jsp">Home</a>
        <a href="reghome.jsp#about">About</a>
        <a href="reghome.jsp#popularbooks">Popular Books</a>
        <a href="reghome.jsp#reviews">Reviews</a>
        <a href="reghome.jsp#contact">Contact us</a>
        <a href="viewexchangebooks.jsp" class="store" >Library</a>
        <a href="viewallselbooks.jsp" >Store</a> 
		</nav>
		
	
	</header><br><br>
<section class="sectionform">
	<div class = form-box>
		<div class= "form-value">
			<form action="contactus" method="post">
                <h2>Contact Us</h2><br>
				<div class = "inputbox">
					<input type="text" name="name">
					<label for = "">Name</label>
				</div>
				<div class = "inputbox">
					<input type="text" name="email">
					<label for = "">Email</label>
				</div>
				<div class = inputbox>
					<input type="text" name="phone">
					<label for = "text">Phone Number</label>
				</div>
				<div class = inputbox>
					<input type="text" name="message">
					<label for = "text">Message</label><br>
				</div>	<br>
				<input type="submit" name="submit" id="submit" value="Submit">	
			</form>
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