<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enquery Page</title>
    <link rel="stylesheet" href="cssfolder/form.css">

</head>
<body>

    <div class="alert-box">
        <img src="../images/logo.png">
        <p class="alert">msg</p>
    </div>
    <%
       String tourname = request.getParameter("tourname");
       String email = (String) session.getAttribute("email");
    %>
    <div class="form">
       <form action="bookdone.jsp" method='post'>
        <h1 class="heading">Booking Enquery Form</h1>
        <input type="text" placeholder="Tour Name" autocomplete="off" class="name" name="tourname"  value="<%=tourname%>" required  readonly="readonly">
        <input type="text" placeholder="Contact Person Name" autocomplete="off" class="name" name="name"  required>
        <input type="email" placeholder="Contact Email  Id" autocomplete="off" class="email" name="email"  value="<%=email%>" required  readonly="readonly">
        <input type="text" placeholder="Contact Person Number" autocomplete="off" class="email" name="contactno"  required>
        <input type="number" placeholder="No. of adult" autocomplete="off" class="email" name="adult"  required min=1>
        <input type="number" placeholder="No. of child" autocomplete="off" class="email" name="child"  required min=0>
        <input type="date" placeholder="Journey Date" autocomplete="off" class="email" name="jdate"  required>
        <input type='submit' class="submit-btn" value='Make Enqury'>
        </form>
        <a href="home.jsp" class="link">Home</a>
    </div>


    <script src="jsfolder/form.js"></script>
    
</body>
</html>