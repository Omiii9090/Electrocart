<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="/components/regnav.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login- VisionShop</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css" href="components/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
	<style>
		*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}

body {
  /* The image used */
  background-image: url("img/b8.jpg");
  }
body{
  background-color:#ce93d8;
  
}
::selection{
  background: rgba(26,188,156,0.3);
}
.container{
  max-width: 480px;
  padding: 0 20px;
  margin: 170px auto;
}
.wrapper{
  width: 100%;
  background: #fff;
  border-radius: 5px;
  box-shadow: 0px 4px 10px 1px rgba(0,0,0,0.1);
}
.wrapper .title{
  height: 90px;
  background: #9c27b0;
  border-radius: 5px 5px 0 0;
  color: #fff;
  font-size: 30px;
  font-weight: 600;
  display: flex;
  align-items: center;
  justify-content: center;
}
.wrapper form{
  padding: 30px 25px 25px 25px;
}
.wrapper form .row{
  height: 45px;
  margin-bottom: 15px;
  position: relative;
}
.wrapper form .row input{
  height: 100%;
  width: 100%;
  outline: none;
  padding-left: 60px;
  border-radius: 5px;
  border: 1px solid lightgrey;
  font-size: 16px;
  transition: all 0.3s ease;
}
form .row input:focus{
  border-color: #9c27b0;
  box-shadow: inset 0px 0px 2px 2px rgba(26,188,156,0.25);
}
form .row input::placeholder{
  color: #999;
}
.wrapper form .row i{
  position: absolute;
  width: 47px;
  height: 100%;
  color: #fff;
  font-size: 18px;
  background: #9c27b0;
  border: 1px solid #16a085;
  border-radius: 5px 0 0 5px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.wrapper form .pass{
  margin: -8px 0 20px 0;
}
.wrapper form .pass a{
  color: #9c27b0;
  font-size: 17px;
  text-decoration: none;
}
.wrapper form .pass a:hover{
  text-decoration: underline;
}
.wrapper form .button input{
  color: #fff;
  font-size: 20px;
  font-weight: 500;
  padding-left: 0px;
  background: #9c27b0;
  border: 1px solid #9c27b0;
  cursor: pointer;
  width:180px;
  margin-right:30px;
  
}
form .button input:hover{
  background: #9c27b0;
}
.wrapper form .signup-link{
  text-align: center;
  margin-top: 20px;
  font-size: 17px;
}
.wrapper form .signup-link a{
  color: #9c27b0;
  text-decoration: none;
}
form .signup-link a:hover{
  text-decoration: underline;
}

.wrapper form .pass{
  margin: -8px 0 20px 0;
}
.wrapper form .pass a{
  color: #9c27b0;
  font-size: 17px;
  text-decoration: none;
}
.wrapper form .pass a:hover{
  text-decoration: underline;
}
	</style>
</head>
<body>
	<body class="image">
    <div class="container">
      <div class="wrapper">
        <div class="title"><span>Login Form</span></div>
        <%@include  file="components/message.jsp" %> 
        <form action="login" method="post">
          <div class="row">
            <i class="fas fa-user"></i>
            <input type="text" name="email" placeholder="Enter your Email" required>
          </div>
          <div class="row">
            <i class="fas fa-lock"></i>
            <input type="password" name="password" placeholder="Enter your Password" required>
          </div>

          <div class="pass"><a href="#">Forgot password?</a></div>
        
          <div class="row button">
            <span><input type="submit" value="Login"></span>
            <span><input type="reset" value="Reset"></span>
          </div>
          <div class="signup-link">Not a member? <a href="register.jsp">Signup now</a></div>
        </form>
      </div>
    </div>
	
</body>
</html>