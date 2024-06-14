<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="cssfolder/form.css">

</head>
<body>
<%
try{  
String email = request.getParameter("email")	;
String epwd = request.getParameter("pwd")	;
Class.forName("com.mysql.cj.jdbc.Driver");   //jdbc drvier load 
Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/tourdb","root","root");  // connection create - jdbc url , uid , pwd
//here sonoo is database name, root is username and password  
PreparedStatement stmt=con.prepareStatement("select * from users where email=? and pwd=?");  // sql statement create
stmt.setString(1, email);
stmt.setString(2, epwd);
ResultSet rs=stmt.executeQuery();  // to execute select query for table in db
if(rs.next())  
{ 
  session.setAttribute("email", email);	
  response.sendRedirect("home.jsp");
} 
else { 
	%>	
	<div class="form">
    <h1 class="heading">Sorry....Try again done.......</h1>
    <a href="login.html" class="link">Login</a>
    </div>
<%
} 
}

catch(Exception e){
	%>
	<div class="form">
    <h1 class="heading">Sorry....Registration not done.......</h1>
    <a href="login.html" class="link">Login</a>
    </div>

<%
} 
%>


</body>
</html>