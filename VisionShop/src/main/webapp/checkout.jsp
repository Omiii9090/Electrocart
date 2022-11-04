<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first to access checkout page");
        response.sendRedirect("login.jsp");
        return;

    }

%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Checkout page for your orders </title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body>
<%@include file="components/navbar.jsp"%>

        <div class="container">
            <div class="row mt-5">                

                <div class="col-md-6">
                    <!--card-->
                    <div class="card">
                        <div class="card-body">

                            <h3 class="text-center mb-5">Your selected items</h3>

                            <div class="cart-body">

                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <!--form details-->
                    <!--card-->
                    <div class="card">
                        <div class="card-body">

                            <h3 class="text-center mb-5">Your details for order</h3>
                            <form action="OrderDetailsServlet">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input value="<%= user.getEmail()%>" name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                               
                                
					 <div class="form-group">
                                    <label for="name">Your first name</label>
                                    <input value="<%= user.getUser_fname()%>" name="fname" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter first name">
                                </div>

                                <div class="form-group">
                                    <label for="name">Last Name </label>
                                    <input value="<%= user.getUser_lname()%>" name="lname" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter your  last name ">
                                
                                </div>
                                
                                <div class="form-group">
                                    <label for="name">Total No of Products </label>
                                    <input type="text" name="prodno" class="form-control" id="prod" aria-describedby="emailHelp" placeholder="Enter Total number of products ">
                                
                                </div>
                                
                                <div class="form-group">
                                    <label for="name">Total Price </label>
                                    <input type="text" name="price" class="form-control" id="prod" aria-describedby="emailHelp" placeholder="Enter Total price ">
                                
                                </div>


                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1" >Your shipping address</label>
                                    <textarea class="form-control"  name="address" id="exampleFormControlTextarea1" placeholder="Enter your address" rows="3"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1" >Order Date</label>
                                    <input  type="date" name="date" class="form-control" id="date" aria-describedby="currentdate">
                                
                                </div>

                                <div class="container text-center">
                                    <button class="btn btn-outline-success">Order Now</button>
                                    <button class="btn btn-outline-primary">Continue Shopping</button>
                                </div>

                            </form>    

                        </div>
                    </div>
                </div>
            </div>

        </div>


        <%@include  file="components/common_modals.jsp" %>
    </body>
</html>
