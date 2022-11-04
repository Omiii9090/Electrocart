<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Success</title>
<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
 <script
      src="https://kit.fontawesome.com/ffcb14d630.js"
      crossorigin="anonymous"
    ></script>
 <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      	align-items:center;
      	justify-content:center;
      	position:relative;
      }
      .fa-solid fa-check{
      	display:flex;
      	align-items:center;
      	justify-content:center;
      	position:relative;
      }
    </style>
</head>
<body>
<%@include file="components/navbar.jsp" %>
	  <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <i class="fa-solid fa-check"></i>
      </div>
        <h1>Success</h1> 
        <p>We received your payment;<br/> Happy Shopping!!</p>
        <a href="index.jsp">Continue Shopping</a>
      </div>
</body>
</html>