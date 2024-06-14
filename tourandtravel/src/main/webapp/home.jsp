<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<!--<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
	<title>Travel Website</title>
    <link rel="stylesheet" href="cssfolder/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="script.js"></script>
</head>
<body>
	<section class="header">
		<div class="container">
			<img src="images/logo.png">
			<nav class="navigation">
				<a href="home.jsp">Home</a>
				<a href="#about">About</a>
				<a href="#package">Package</a>
				<a href="mybookings.jsp">My Bookings</a>
				<a href="logout.jsp" class="login-btn">Log Out</a>
	    	</nav>
    
		</div>
		<h1>WELCOME</h1>
		<h1>Let Explore The world Through <br> Roaming Route</h1>
			<p>Unlock the World's Wonders: Your Ultimate Journey Starts Here!</p>
		<div class="input-group">
			<span><i class="fa fa-search"></i></span>
			<input type="text" class="form-control" placeholder="Search Country or City">
			<div class="input-group-append">
	    		<button type="submit" class="input-group-text btn">Search</button>
			</div>
		</div>
</section>
<section class="features" id="package">
<h1>View  Package</h1>
<div class="container">
<div class="row">

<%
try{  
Class.forName("com.mysql.cj.jdbc.Driver");   //jdbc drvier load 
Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/tourdb","root","root");  // connection create - jdbc url , uid , pwd
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  // sql statement create
ResultSet rs=stmt.executeQuery("select * from tours");  // to execute select query for table in db
while(rs.next())  
{  
	int rating = rs.getInt(6);
	int days = rs.getInt(4);
	int nights = rs.getInt(3);
	int price = rs.getInt(5);
	String name=rs.getString(1);
	String desc=rs.getString(2);
%>
<div class="col-md-4">
		<div class="feature-box">
		<div class="feature-img">
		<img src="images/1.jpg">
		<div class="price">
			<p>₹<%=price%></p>
		</div>
		<div class="rating">
		  <%
		     for(int i=1; i<=rating; i++)
		    	 out.println("<i class='fa fa-star'></i>");
		  %>
		   <% 

		     for(int i=1; i<=5-rating; i++)
		    	 out.println("<i class='fa fa-star-o'></i>");
		  %>		
		</div>
		</div>
		<div class="feature-details">
			<h4><%=name%></h4>
			<p><%=desc%></p>
			<div>
				<span><i class="fa fa-map-marker"></i><%=name%></span>
				<span><i class="fa fa-sun-o"></i><%=days%> Days</span>
				<span><i class="fa fa-moon-o"></i><%=nights%> Nights</span>
				<span><i class="fa fa-moon-o"></i><a href='booknow.jsp?tourname=<%=name%>')> Book Now</a></span>
			</div>
		</div>
		</div>
</div>


<%
}

 
//con.close();  
}catch(Exception e){ out.println(e);}  
%>
</div>
</div>
</div>
	</section>
	<section class="gallery" id="about">
		<h1>Travelling Gallery</h1>
		<div class="container">
		<div class="row">
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-1.jpg">
				<h4>Munnar</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-2.jpg">
				<h4>Darjeeling</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-3.jpg">
				<h4>Meghalaya</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-4.jpg">
				<h4>Andaman</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-5.jpg">
				<h4>Kashmir</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-6.jpg">
				<h4>Rajasthan</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-7.jpg">
				<h4>Goa</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-8.jpg">
				<h4>Delhi</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-9.jpg">
				<h4>Mauritius</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-10.jpg">
				<h4>Vietnam</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-11.jpg">
				<h4>Singapore</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-12.jpg">
				<h4>Washington</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-13.jpg">
				<h4>Paris</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-14.jpg">
				<h4>Switzerland</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-15.jpg">
				<h4>Bangkok</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-16.jpg">
				<h4>Sydney</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-18.jpg">
				<h4>Venice</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-19.jpg">
				<h4>Japan</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-20.jpg">
				<h4>Ladakh</h4>
			</div>
		</div>
		<div class="col-md-3">
			<div class="gallery-box">
				<img src="images/travel-21 (1).jpg">
				<h4>Nepal</h4>
			</div>
		</div>
		</div>
		</div>
	</section>
	<section class="banner">
        <div class="banner-highlights">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        
                        <h2>Get 30% on top destination</h2>
                        <p>Book your tickets before 31st March and avail flat 30% discount</p>
                    </div>
                    <div class="col-md-4">
						<button type="button" class="booking-btn">Book Now</button>       
                    </div>
                </div>
            </div>
        </div>
    </section>
	<section class="users-feedback">
	<h1>Users Review</h1>
	<div class="container">
	<div class="row">
	<div class="col-md-4">
		<div class="user-review">
			<p>Excellent arrangement was provided by RoamingRoute. Hotels were very good. Driver was informative and on time everytime. Recommendation given by the travel agent was very good and helpful</p>
			<h5>Arun Murthy</h5>
			<small>Bangalore</small>
    	</div>
		<img src="images/user1.jpg">
	</div>
	<div class="col-md-4">
		<div class="user-review">
			<p>This is our favorite travel agency.They have Outstanding customer services at reasonable prices. Thank you for easy booking with flights and hotels. Great deals, and honest services. Highly recommended to everyone.</p>
			<h5>Supriya Hegde</h5>
			<small>Mumbai</small>
    	</div>
		<img src="images/user3.jpg">
	</div>
	<div class="col-md-4">
		<div class="user-review">
			<p>We had a good experience, the hotel in Munnar was very clean and even the staffs were polite. The driver was also very friendly and helpful. A big thanks to Mona for arranging everything.</p>
			<h5>Deepti Mangalgiri</h5>
			<small>Ahmedabad</small>
    	</div>
		<img src="images/user2.jpg">
	</div>
	</div>
    </div>
	</section>
	<section class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <img src="images/logo.png" class="footer-logo">
                    <p> We always try to provide quality service at reasonable price. </p>
                </div>
                <div class="col-md-3">
                    <h4> Features </h4>
                    <p> Deals & Offers </p>
                    <p> Customer Reviews </p>
                    <p> Cancellation Policy </p>
                </div>
                <div class="col-md-3">
                <h4>Quick Contact</h4>                
                    <p><i class="fa fa-phone-square"></i> 9836453631</p>
					<p><i class="fa fa-envelope"></i> roamingroute@gmail.com</p>
					<p><i class="fa fa-home"></i> ABC road,Kolkata</p>
                </div>
                <div class="col-md-3">
					<h4>Follow Us On</h4>
                    <p><i class="fa fa-facebook-official"></i> RoamingRoute </p>
					<p><i class="fa fa-youtube-play"></i> RoamingRoute </p>
					<p><i class="fa fa-twitter"></i> RoamingRoute </p>
                </div>
            </div><hr>
			<p class="copyright">Made with <i class="fa fa-copyright"> by RoamingRoute <i class="fa fa-heart"></i></i></p>
        </div>
    </section>
</body>
</html>