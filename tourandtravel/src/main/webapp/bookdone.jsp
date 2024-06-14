<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Page</title>
    <link rel="stylesheet" href="cssfolder/form.css">

</head>
<body>

    <div class="alert-box">
        <img src="../images/logo.png">
        <p class="alert">msg</p>
    </div>

  
<%
try{  
String tourname = request.getParameter("tourname");
String email = request.getParameter("email");
String name = request.getParameter("name")	;
String contactno = request.getParameter("contactno")	;
int  adult =Integer.parseInt(request.getParameter("adult"))	;
int  child =Integer.parseInt(request.getParameter("child"))	;
String jdate = request.getParameter("jdate")	;

Class.forName("com.mysql.cj.jdbc.Driver");   //jdbc drvier load 
Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/tourdb","root","root");  // connection create - jdbc url , uid , pwd
//here sonoo is database name, root is username and password  
PreparedStatement stmt=
con.prepareStatement("insert into bookings (contanctname,contactemail,adult,child,contactno,dtofjourney,bookstatus,tname) values (?,?,?,?,?,?,?,?)");  // sql statement create
stmt.setString(1, name);
stmt.setString(2, email);
stmt.setInt(3, adult);
stmt.setInt(4,child);
stmt.setString(5, contactno);
stmt.setString(6, jdate);
stmt.setString(7, "Pending");
stmt.setString(8, tourname);

int rs=stmt.executeUpdate();  // to execute insert query for table in db
if(rs==0)
{ 
%>
	<div class="form">
    <h1 class="heading">Sorry....Booking not done.......</h1>
    </div>

<%
} 
else { 
	%>	
	<div class="form">
    <h1 class="heading">Welcome...Enquery successfully placed.......</h1>
       <br/>
     <a href="home.jsp" class="link">Home</a>
    </div>
<%
} 
}

catch(Exception e){
	
	%>
	<div class="form">
    <h1 class="heading">Sorry....Enquery not placed.......</h1>
    <%=e.getMessage() %>
    <br/>
     <a href="home.jsp" class="link">Home</a>
    </div>

<%
} 
%>
    <script src="jsfolder/form.js"></script>
    
</body>
</html>