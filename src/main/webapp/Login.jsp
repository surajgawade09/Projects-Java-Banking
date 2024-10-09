<%@page import="javax.swing.plaf.basic.BasicBorders.MarginBorder"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="bank.model.ExistingCustomer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="Backgroundcss.css" rel="stylesheet">
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-light" >
  <div class="container-fluid ">
    <a class="navbar-brand" href="Home.jsp" style="font-family: Georgia, 'Times New Roman', Times, serif;"><img alt="logo" src="Group 1.png" style="width: 150px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item" style="margin-left: 30px; margin-right: 30px;">
          <a class="btn btn-outline-success" aria-current="page" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-outline-success" href="Home.jsp">Contact Us</a>
        </li>
        <li class="nav-item" style="margin-left: 30px; margin-right: 30px;">
            <a class="btn btn-outline-success" aria-current="page" href="Home.jsp">Help</a>
          </li>
      </ul>
      <form class="d-flex" role="search">
        <button class="btn btn-outline-success" type="submit" style="width: 250px;">Search</button>
      </form>
    </div>
  </div>
</nav>
<div class="container">
  <div class="row align-items-start">
    <div class="col-7">
    <img alt="loginpage" src="loginpage1.png" style="width: 800px;height: 100%; margin-top: 100px">
    </div>
    <div class="col-5" >
    
    <div class="container-box" style="margin-top: 200px">
    <img alt="Login" src="Loginpage.png" style="width: 100px;height: 100px;margin-left: 240px;margin-bottom: 50px">
      <form action="LoginController">
<input type="text" name="username" style="border-top: 0;border-left: 0;border-right: 0;width: 50%;margin-left: 160px" placeholder="username"><br><br><br>
<input type="password" name="password" style="border-top: 0;border-left: 0;border-right: 0;width: 50%;margin-left: 160px" placeholder="password"><br><br><br>
<button class="btn  btn-outline-success" style="width: 50%; margin-left: 160px">Login</button>
<%
if(!session.isNew())
{
		String str=(String)session.getAttribute("error1");
		%>
		<h5 style="margin-left: 230px;margin-top: 20px"><% out.print(str); %></h5>
		
<%session.invalidate();}
%>
</form>
</div>
  </div>
</div>





</body>
</html>