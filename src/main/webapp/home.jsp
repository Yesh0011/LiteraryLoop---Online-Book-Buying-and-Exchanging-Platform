<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Literary Loop</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="header">
        <a href="#" class="logo">
            <img src="Images/logo-no-background.png" alt="Logo">
        </a>

        <nav class="navbar">
            <a href ="#home">Home</a>
            <a href="#about">About Us</a>
            <a href="#popularbooks">Popular Books</a>
            <a href="#reviews">Reviews</a>
            <a href="#contact">Contact</a>

            <div class="search-container">
                <form action="/search">
                    <input type="text" placeholder="Search..." name="query">
                    <button type="submit" id="sesarch">Search</button>
                </form>
            </div>
        </nav>
        </br>        

    </div>
    <section class="home" id="home">
        <div class="content">
            <div class="hm">Embrace the Beauty of Physical Books with Literary Loop</br>
                <div class="hn">Rediscover the joy of physical books in a digital age.</br>
                     Join our community of book enthusiasts to explore, exchange,</br> and cherish
                      the tangible world of literature.</div>
                      <a href="login.jsp" class="btn">Get Started</a>
            </div>
            
        </div>
            <img src="Images/hom.png" style="margin-top: 100px; 
            margin-right: 100px; margin-bottom: 10px; margin-left: 180px;"/>
    </section>

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
            
        
    </section>
 
</body>
</html>