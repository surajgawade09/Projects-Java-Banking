<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="Backgroundcss.css" rel="stylesheet">
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<style>
*{
    margin: 0%;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}

body{
    height: 100vh;
    background-image: url("greenpig.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
}
body::before{
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,0.4);
    z-index: -1;

}
.Record-box{
    font-size: 20px;
    color: #fff;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
}

</style>
<body>
<div class="container text-center">
  <div class="row align-items-start">
    <div class="col">
    </div>
    <div class="col">
    <div class="Record-box">
      <form action="DeleteController" >
	<h3 style="margin-bottom: 20px">Enter Account Number</h3>
	<input type="text" name="accno" style="border-radius: 10px;"><br>
	<button class="btn btn-outline-success" style="margin-top: 20px;width: 150px">Delete</button>
	</form>
</div>
<%

String str=(String)session.getAttribute("delete");
if(!session.isNew())
	
{ %>

	<h4 style="color: white;"> <% out.println(str);%></h4>
	  
<% session.invalidate();}
%>
<br>
    <form action="HomeLoginView.jsp">
<button class="btn btn-outline-light" style="margin-top: 20px;width: 150px">Home</button>
</form>
    </div>
    <div class="col">
    </div>
  </div>
</div>
</body>
</html>