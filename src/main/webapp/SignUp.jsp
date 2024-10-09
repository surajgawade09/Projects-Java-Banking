<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}

body{
    display: flex;
    height: 100vh;
    justify-content: center;
    align-items: center;
    background: url(greenpig.jpg);
    background-size: cover;
}

.container{
width: 100%;
max-width: 650px;
background: rgba(0, 0, 0, 0.5);
padding: 28px;
margin: 0 28px;
border-radius: 10px;
box-shadow: inset -2px 2px 2px white;

}

.form-title{
    font-size: 26px;
    font-weight: 600;
    text-align: center;
    padding-bottom: 6px;
    color: white;
    text-shadow: 2px 2px 2px black;
    border-bottom: solid 1px white;
}

.main-user-info{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 20px 0;
}

.user-input-box:nth-child(2n){
    justify-content: left;
}

.user-input-box{
    display: flex;
    flex-wrap: wrap;
    width: 50%;
    padding-bottom: 20px;
}

.user-input-box label{
    width: 95%;
    color: white;
    font-size: 15px;
    font-weight: 400;
    margin: 10px;
}

.user-input-box input{
    height: 40px;
    width: 250px;
    border-radius: 7px;
    outline: none;
    border: 1px solid grey;
    padding: 0 10px;
}

.form-submit-btn{
margin-top: 40px;    
}
.form-submit-btn input{
    cursor: pointer;
    display: block;
    width: 100%;
    margin-top: 10px;
    font-size: 20px;
    padding: 10px;
    border: none;
    border-radius: 3px;
    color: rgb(209, 209, 209);
    background: rgba(63, 114, 76, 0.7);
}

.form-submit-btn :hover{
    background: rgba(63, 114, 76, 10);
}


</style>
<body>
<div class="container">
    <h1 class="form-title">Sign Up</h1>
    <form action="SignUpController">
      <div class="main-user-info">
        <div class="user-input-box">
          <label for="Accno">Account Number</label>
          <input type="text" name="accno" placeholder="Account number">
        </div>
        <div class="user-input-box">
          <label for="customername">Customer Name</label>
          <input type="text" name="custname" placeholder="enter name">
        </div>
        <div class="user-input-box">
          <label for="username">UserName</label>
          <input type="text" name="username" placeholder="username">
        </div>
        <div class="user-input-box">
          <label for="password">Password</label>
          <input type="password" name="password" placeholder="password">
        </div>
        <div class="user-input-box">
          <label for="accbal">Account Balance</label>
          <input type="text" name="accbal" placeholder="balance">
        </div>
      </div>
      <div class="form-submit-btn">
        <input type="submit" value="SignUp">
      </div>
    </form>
    <%
if(!session.isNew())
{
		String str=(String)session.getAttribute("error2");
		%>
		<h3 style="margin-left: 270px;margin-top: 20px;color: white;"><% out.print(str); %></h3>
		
<%session.invalidate();}
%>
  </div>


</body>
</html>