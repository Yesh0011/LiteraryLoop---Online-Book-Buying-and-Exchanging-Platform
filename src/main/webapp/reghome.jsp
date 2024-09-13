<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="path/to/font-awesome/css/all.min.css">

<style>
	.slideshow-container {
	
    position: relative;
    max-width: 90%; /* Set the maximum width to 70% of the screen width */
    margin: auto;
    width: 2000px; /* Set a fixed width in pixels */
    height: 750px; /* Set a fixed height in pixels */
    overflow: hidden; /* Hide the overflowing content */
    float:left;
}

.mySlides {
    display: none;
    width: 100%;
    height: 100%; /* Ensure the slideshow images take up the full height */
}

.mySlides img {
	margin-top: 40px;
    width: 100%;
    height: 100%;
    object-fit: cover; /* Maintain image aspect ratio and cover the entire slide */
}

.slideshow-container .prev,
.slideshow-container .next {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    padding: 16px;
    color: white;
    font-weight: bold;
    font-size: 20px;
    transition: 1s ease;
    border-radius: 5px;
    cursor: pointer;
}

.slideshow-container .prev {
    left: 0;
}

.slideshow-container .next {
    right: 0;
}

.slideshow-container .prev:hover,
.slideshow-container .next:hover {
    background-color: rgba(0, 0, 0, 0.8);
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
            <a href ="reghome.jsp">Home</a>
			<a href ="reghome.jsp#about">About</a>
			<a href ="reghome.jsp#popularbooks">Popular Books</a>
			<a href ="reghome.jsp#reviews">Reviews</a>
			<a href ="reghome.jsp#contact">Contact us</a>
			<a href="viewexchangebooks.jsp">Library</a>
	        <a href="viewallselbooks.jsp" class="store">Store</a> 

            <div class="search-container">
               
             	 <button type="button" id="cart">
    <img src="Images/carts.png" alt="Cart Image" style="width: 30px; height: 30px;">
</button>

<script>
    // Get the button element by its ID
    var cartButton = document.getElementById('cart');

    // Add a click event listener to the button
    cartButton.addEventListener('click', function() {
        // Redirect to cartview.jsp
        window.location.href = 'cartview.jsp';
    });
</script>&nbsp&nbsp&nbsp&nbsp
                 
                 <button type="button" id="profile">
    <img src="Images/membershipicon.png" alt="Cart Image" style="width: 30px; height: 30px;">
</button>

<script>
    document.getElementById("profile").addEventListener("click", function() {
        window.location.href = "login.jsp";
    });
</script>
			    
            
            </div>
        </nav>
        </br>        

    </div>
    
    <section class="home" id="home">
        <div class="slideshow-container">
            <div class="mySlides">
                <img src="Images/banner1.jpg" alt="Slide 1">
            </div>
    
            <div class="mySlides">
                <img src="Images/banner2.jpg" alt="Slide 2">
            </div>
    
            <div class="mySlides">
                <img src="Images/banner3.png" alt="Slide 3">
            </div>
    
            <div class="mySlides">
                <img src="Images/banner4.jpg" alt="Slide 4">
            </div>
    
            <!-- Previous and Next buttons -->
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        
        <!-- Home section content -->
        <div class="content">
            <!-- Your content here -->
        </div>
    </section>

    <script>
        let slideIndex = 0;

        function showSlides() {
            const slides = document.getElementsByClassName("mySlides");
            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1;
            }
            slides[slideIndex - 1].style.display = "block";
            setTimeout(showSlides, 2000); // Change image every 2 seconds
        }

        function plusSlides(n) {
            slideIndex += n;
            const slides = document.getElementsByClassName("mySlides");
            if (slideIndex > slides.length) {
                slideIndex = 1;
            } else if (slideIndex < 1) {
                slideIndex = slides.length;
            }
            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slides[slideIndex - 1].style.display = "block";
        }

        showSlides();
    </script>

   

    <section class="about" id="about"><br><br><br><br><br><br>
        <h1 class="heading"><span>ABOUT</span> US</h1>
        <div class="row">
                <div class="image">
                    <img src="Images/read.jpg" alt="read">
                </div>
                <div class="content">
                    <p>Welcome to Literary Loop, 
                        a vibrant community where book lovers come
                         together to share their passion for reading
                          and storytelling. Explore our curated book
                           exchanges, sell your own beloved reads,
                            and connect with fellow bibliophiles from
                             around the world.</p><p> With our user-friendly
                              platform and dedicated team of admins,
                               your literary journey has never been
                                easier. Join us today and discover the
                                 joy of exploring new stories and 
                                 connecting with like-minded readers.
                        </p>
                </div>
        </div>
        <br><br>
    </section>
    <section class="popularbooks" id="popularbooks">
        <h1 class="heap">Popular <span>Books</span></h1>
        <div class="box-container">
            <div class="box">
                <img src="Images/en.jpg" alt="1">
                <h2>English Grammer</h2>
                <h3>Dogar Publishers</h3>
               
            </div>
            <div class="box">
                <img src="Images/ph.jpg" alt="2">
                <h2>Physics Class-7</h2>
                <h3>Topers Academy</h3>
                
            </div>
            <div class="box">
                <img src="Images/pp.jpeg" alt="3">
                <h2>Pride and Prejudice</h2>
                <h3>Jane Austen</h3>
                
            </div>
            <div class="box">
                <img src="Images/sd.jpeg" alt="1">
                <h2>Harry Potter</h2>
                <h3>J.K. Rowling</h3>
                
            </div>
        </div>
    </section> 
    <section class="reviews" id="reviews">
        <h1 class="headin"><br>User<span> Reviews</span></h1>
        <div class="box-contain">
            <div class="bos">
                <img src="Images/wd.jpg" alt="1" class="quote">
                <p>"Joining Literary Loop has been a game-changer 
                    for my reading experience. 
                    The platform's curated book 
                    exchanges have introduced me to hidden 
                    literary gems I never would've discovered otherwise.
                     The sense of community here is palpable, and the 
                     dedicated admins ensure a smooth and enriching j
                     ourney for every member. Whether you're a seasoned
                      reader or just starting your literary adventure, 
                      Literary Loop is the perfect companion on your 
                      journey through the world of books."</p>
                
            </div>
            <div class="bos">
                <img src="Images/de.jpg" alt="1" class="quote">
                <p>"Discovering Literary Loop has reignited my love for
                     reading. The platform's seamless selling experience
                      has allowed me to share my favorite reads with 
                      fellow book enthusiasts, while the curated 
                      exchanges have introduced me to captivating 
                      stories I never knew existed. The sense of 
                      camaraderie among members is truly special,
                       and the support from the dedicated admins adds 
                       an extra layer of warmth to the community. 
                       Joining Literary Loop has been a delightful 
                       journey, and I can't wait to see where it takes 
                       me next."</p>
                
            </div>
            <div class="bos">
                <img src="Images/fv.jpeg" alt="1" class="quote">
                <p>"Joining Literary Loop has been an absolute delight!
                     As someone who loves getting lost in the pages of a 
                     good book, this platform has been a game-changer. 
                     From discovering hidden literary treasures in the 
                     curated exchanges to connecting with fellow 
                     bookworms who share my passion, every moment 
                     spent here is pure bliss. The dedication of the 
                     admins in ensuring a smooth and enriching 
                     experience for all members is truly commendable.
                      If you're looking for a welcoming 
                      community where your love for books
                       is celebrated, look no further than 
                       Literary Loop!"</p>
                
            </div>
        </div>
    </section>
    <section class="contact" id="contact">
        <h1 class="headi"><br>Contact<span> Us</span></h1>
        <div class="con"><div style="font-size: 30px;">
            Questions? We've got answers! <br>Reach out anytime
                for assistance.<br> Your satisfaction is our priority.<br><br>
                <a href="contactus.jsp" class="btn">See more<br></a></div>
            <img src="Images/45.jpg" alt="Logo" style="height:450px; margin-left: 70px; margin-bottom: 20px;">
        </div>
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
            
        
    </section>

 
        
</body>
</html>