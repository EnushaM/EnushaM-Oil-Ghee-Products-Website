<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>L&G Oils</title>
		<link rel="icon" href="Pics/icon.png" style="width: 100%;height:100%;" type="image/png">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="stylesheet" href="main.css">
		<script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
	</head>
	<body>
					<header class="header" id="header">
			<div class="head-top">
				<img src="Pics/icon.png"class="site-name">
				<div class="site-nav">
					<span id="nav-btn">MENU<i class="fas fa-bars"></i></span>
				</div>
			</div>
			<div class="head-bottom flex">
				<h2>LOREM IPSIUM DOLOR SIT AMET, CONSECUTOR ADIPISCING ELIT.</h2>
				<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
				<button type="button" class="head-btn" onclick="location.href = 'products.html';">GET STARTED</button>
			</div>
		</header>
		<div class="sidenav" id="sidenav">
			<span class="cancel-btn" id="cancel-btn" data-target="sidenav">
				<i class="fas fa-times"></i>
			</span>

			<ul class="navbar">
				<li><a href="home.jsp">Home</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="products.jsp">Products</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>
			</ul>
			<button type="button" class="btn signUpButton" id="signUpButton">Sign Up</button> 
			<button type="button" class="btn loginButton" id="loginButton">Log In</button>
		</div>

		<div id="modal"></div>


		<div class="formnav" id="formnav">
			<span class="cancel-btn" id="cancel-btn" data-target="formnav">
				<i class="fas fa-times"></i>
			</span>

			<form class="formbar" action="signup" method="post" id="signupform">
			<div class="inp-con">
				<label class="fname">Name</label>
  				<input type="text" id="name" name="name" required>
			</div>
			<div class="inp-con">
				<label class="phone">Phone</label>
  				<input type="tel" id="phone" name="phone" pattern="^[+]{1}(?:[0-9\-\(\)\/\.]\s?){6,15}[0-9]{1}$">
			</div>
			<div class="inp-con">
				<label class="password">Password</label>
  				<input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
			</div>
			<div class="inp-con">
				<label class="loc">Location</label>
  				<input type="text" id="location" name="location">
			</div>	
		</form>
			<button type="submit" value="Sign Up" class="btn signUpButton" id="signUpButton" form="signupform">Sign Up</button> 
			<div class="message"id="message">
        <%
            String messageform = request.getParameter("message");
            String errorform = request.getParameter("error");
            if (messageform != null) {
                out.println("<p style='color: green;'>" + messageform + "</p>");
            }
            if (errorform != null) {
                out.println("<p style='color: red;'>" + errorform + "</p>");
            }
        %>
			
		</div>
		</div>

		<div class="lognav" id="lognav">
			<span class="cancel-btn" id="cancel-btn" data-target="lognav">
				<i class="fas fa-times"></i>
			</span>

			<form class="logbar" action="login" method="post" id="loginform">
			<div class="inp-con">
				<label class="phone">Phone</label>
  				<input type="tel" id="phone" name="phone" pattern="^[+]{1}(?:[0-9\-\(\)\/\.]\s?){6,15}[0-9]{1}$">
			</div>
			<div class="inp-con">
				<label class="password">Password</label>
  				<input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
			</div>
			</form>
			<button type="submit" form="loginform" class="btn loginButton" id="loginButton" value="Log In" >Log In</button>
        <div class="message" id="message">
        <%
            String messagelogin = request.getParameter("message");
            String errorlogin = request.getParameter("error");
            if (messagelogin != null) {
                out.println("<p style='color: green;'>" + messagelogin + "</p>");
            }
            if (errorlogin != null) {
                out.println("<p style='color: red;'>" + errorlogin + "</p>");
            }
        %>
		</div>
		</div>
		<section class="contacts" id="contacts">
		<div class="contact">
			<form class="con-form">
				<div class="form-item">
					<label for=name>Name</label>
						<input type="text" placeholder="Name" class="box">
				</div>
				<div class="form-item">
					<label for=email>Email</label>
						<input type="email" placeholder="Email" class="box">
				</div>
				<div class="form-item">
					<label for="mobile">Mobile</label>
						<input type="number" placeholder="Mobile" class="box">
				</div>	
				<div class="form-item">
					<label for="query">Query</label>
					<textarea name="" placeholder="Message" id="" cols="30" rows="10"></textarea>
				</div>		
				<div class="map">
					<iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2815.4639535778806!2d-92.5554146851298!3d45.116933364569846!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x52b2af54c610a261%3A0xf1a0ba94b6271573!2sWestfields%20Hospital!5e0!3m2!1sen!2sin!4v1627494956119!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
				</div>
			</form>
				<div class="form">
					<input type="submit" class="btn" value="Send Query">				
				</div>
		</div>
	</section>
		<footer class="footer">
			<div class="footer-container">
				<div>
					<h2>About Us</h2>
						<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
						aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
						commodo consequat.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
					<ul class="social-icons">
						<li class="flex">
							<i class="fa fa-twitter fa-2x"></i>
						</li>
						<li class="flex">
							<i class="fa fa-facebook fa-2x"></i>
						</li>
						<li class="flex">
							<i class="fa fa-instagram fa-2x"></i>
						</li>
					</ul>
				</div>

				<div>
					<h2>Useful Links</h2>
					<a href="#">Blog</a>
					<a href="#">Awards</a>
					<a href="#">Motto</a>
					<a href="#">Branches</a>
				</div>

				<div>
					<h2>Privacy</h2>
					<a href="#">Career</a>
					<a href="#">About Us</a>
					<a href="#">Contact Us</a>
					<a href="#">Services</a>
				</div>

				<div>
					<h2>Have A Question</h2>
					<div class="contact-item">
						<span>
							<i class="fas fa-map-marker-alt"></i>
						</span>
						<span>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
						</span>
					</div>
					<div class="contact-item">
						<span>
							<i class="fas fa-phone-alt"></i>
						</span>
						<span>
							+33 1 09 75 83 51
						</span>
					</div>
					<div class="contact-item">
						<span>
							<i class="fas fa-envelope"></i>
						</span>
						<span>
							query@domain.com
						</span>
					</div>
				</div>			
			</div>
		</footer>
		    <script src="main.js"></script>
	<c:if test="${not empty param.message}">
		<p style="color:green;">${param.message}</p>
	</c:if>
	<c:if test="${not empty param.error}">
<p style="color:red;">${param.error}</p>
</c:if>
	</body>  
</html>
