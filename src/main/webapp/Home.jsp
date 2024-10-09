<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="firstpage.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body><nav class="navbar navbar-expand-lg bg-light" >
  <div class="container-fluid ">
    <a class="navbar-brand" href="Home.jsp" style="font-family: Georgia, 'Times New Roman', Times, serif;"><img alt="logo" src="Group 1.png" style="width: 150px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item" style="margin-left: 30px; margin-right: 30px;">
          <a class="btn btn-success" aria-current="page" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-success" href="Home.jsp">Contact Us</a>
        </li>
        <li class="nav-item" style="margin-left: 30px; margin-right: 30px;">
            <a class="btn btn-success" aria-current="page" href="Home.jsp">Help</a>
          </li>
      </ul>
      
    </div>
  </div>
</nav>

    <div class="container text-center">
        <div class="row align-items-center">
          <div class="col">
            <div class="row inner" >
            <form action="SignUp.jsp">
                <div class="col">
                    <img src="sign-up-free.png" alt="img1" style="width: 250px;">
                    <button type="submit" class="btn  btn-outline-success " style="margin-top: 10px;">Sign Up</button>
                </div>
                </form>
                <form action="Login.jsp">
                <div class="col">
                    <img src="login.png" alt="" width="160px" style="margin-top: 10px;">
                    <button type="submit" class="btn  btn-outline-success " style="margin-top: 10px;">Login</button>
                    </form>
                </div>
            </div>
          </div>
          <div class="col">
            <div class="bankimage">
                <img src="bank1.png" alt="error">
                <h1 style="margin-top: 20px;">Welcome To<a style="color:green;"> YesBank!</a></h1>
            </div>
          </div>
        </div>
      </div>

</body>
</html>