<%@page import="com.cdac.entities.User" %>
<%@page import="com.cdac.entities.Category" %>
<%@page import="com.cdac.entities.OrderDetails" %>
<%@page import="com.cdac.Dao.Categorydao" %>
<%@page import="com.cdac.Dao.OrderDao" %>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="com.cdac.helper.FactoryProvider"%>
<%@page import="com.cdac.helper.Helper"%>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setDateHeader("Expires", 0);
%>    
<%
		User user=(User)session.getAttribute("current-user");
		if(user==null){
			session.setAttribute("message","You are not looged in!Please login first.");
			response.sendRedirect("login.jsp");
			return;
		}else{
			
			
			if(user.getLogin_role().equals("Customer")){
				session.setAttribute("message","You are not Admin. Do not access This Page.");
				response.sendRedirect("login.jsp");
				return;
				
			}
		}


%>

							<%  Categorydao cdao = new Categorydao(FactoryProvider.getFactory());
                                List<Category> list = cdao.getCategories();
                                
                                OrderDao odao=new OrderDao(FactoryProvider.getFactory());
                                List<OrderDetails> list1 = odao.getOrders();
                                
                                //getting count
                                
                              Map<String,Long> m=Helper.getCounts(FactoryProvider.getFactory());
                                

                            %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>

<style>
	.admin .card{
		border:1px solid #c2185b;
	}
	body {
  /* The image used */
  background-image: url("img/b2.jpg");
  }
	
	.admin .card:hover{
		background:#ffee58;
		cursor:pointer;
	}
</style>
</head>
<body>

	<%@include file="components/navbar.jsp" %>
	<div class="container admin">
		<div class="container-fluid mt-3">
			<%@include file="components/message.jsp" %>
		</div>
	
	
	
		<div class="row mt-3">
			<!-- First Column -->
			<div class="col-md-4">
			
				<div class="card">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width:125px;" class="img-fluid rounded-circle" src="img/team.png" alt="User">
						</div>
						<h1><%= m.get("userCount") %></h1>
						<h1 class="text-upparcase text-muted">Users</h1>
					</div>
				</div>
				
			</div>
			<!-- Second Column -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width:125px;" class="img-fluid rounded-circle" src="img/list.png" alt="User">
						</div>
						
						<h1><%= list.size() %></h1>
						<h1 class="text-upparcase text-muted">Categories</h1>
					</div>
				</div>
				
			</div>
			<!-- Third Column -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width:125px;" class="img-fluid rounded-circle" src="img/packaging.png" alt="User">
						</div>
						<h1><%= m.get("productCount") %></h1>
						<h1 class="text-upparcase text-muted">Products</h1>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Second row -->
		
		<div class="row mt-3">
		<!-- second row first col -->
			<div class="col-md-4">
				<div class="card" data-toggle="modal" data-target="#addcategorymodal">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width:125px;" class="img-fluid rounded-circle" src="img/plus.png" alt="User">
						</div>
						<h1><%= list.size() %></h1>
						<p class="mt-2">Click here to add new Category</p>
						<h1 class="text-upparcase text-muted">Add Category</h1>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" data-toggle="modal" data-target="#addproductmodal">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width:125px;" class="img-fluid rounded-circle" src="img/add-to-cart.png" alt="User">
						</div>
						<h1><%= m.get("productCount") %></h1>
						<p class="mt-2">Click here to add new Products</p>
						<h1 class="text-upparcase text-muted">Add Products</h1>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" data-toggle="modal" data-target="#assigndeliverymodal">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width:125px;" class="img-fluid rounded-circle" src="img/food-delivery.png" alt="User">
						</div>
						
						<p class="mt-5">Click here to Assign Delivery</p>
						<h2 class="text-upparcase text-muted">Assign Delivery</h2>
					</div>
				</div>
			</div>
		</div>
	</div>



<!-- Assign delivery modal -->
<!-- Modal -->
<div class="modal fade" id="assigndeliverymodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="assigndeliverymodalLabel">Fill Category Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="DeliveryAssigned.jsp" method="post">
        
        	 <div class="form-group">
                            <lable>Select Order</lable>
      							<br>
                                <select name="OrderId" class="form-control" id="">
                                    <%                                        for (OrderDetails o : list1) {
                                    %>
                                    <option value="<%= o.getOrder_id()%>"> <%= o.getOrder_id()%> <%= o.getFname()%> <%= o.getLname()%> <%= o.getAdd()%> </option>
                                    <%}%>
                                </select>

                            </div>
                            
                            <div class="container text-center">

                                <button class="btn btn-outline-success">Assign Delivery</button>

                            </div>
        </form>
      </div>
     
    </div>
  </div>
</div>


	


<!-- Add Category modal -->
<!-- Modal -->
<div class="modal fade" id="addcategorymodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addcategorymodalLabel">Fill Category Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="categoryoperations" method="post">
        
        	<input type="hidden" name="operation" value="addcategory" />
        	<div class="form-group">
        	<lable>Category Name</lable>
      			<br>
        		<input type="text" class="form-control" name="categoryname" placeholder="Enter Category Name here" required />
        	</div>
        	<div class="form-group">
        	<lable>Category Type</lable>
      							<br>
        		<input type="text" class="form-control" name="category_type" placeholder="Enter Category Type here" required />
        	</div>
        	<div class="form-group">
        	<lable>Category Description</lable>
      							<br>
        		<textarea class="form-control" placeholder="Enter category desc" name="catdescription" required></textarea>
        	</div>
        	
        	<div class="container text-center">
        		<button class="btn btn-outline-success">Add Category</button>
        		 <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        	</div>
        </form>
      </div>
     
    </div>
  </div>
</div>

<!-- Product modal -->


<!-- Modal -->
<div class="modal fade" id="addproductmodal" tabindex="-1" role="dialog" aria-labelledby="addproductmodalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addproductmodal">Fill Product Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      	<form action="categoryoperations" method="post" enctype="multipart/form-data">
      		<input type="hidden" name="operation" value="addproduct" />
      	
      			<div class="form-group">
      			<lable>Product Name</lable>
      				<br>
      				<input type="text" class="form-control" placeholder="Enter Name of the Product" name="pname" required />
      			</div>
      			
      			
      			
      			<div class="form-group">
                                <label for="pPic">Select Picture of product</label>  
                                <br>
                                <input type="file" id="pPic" name="pPic" required />

                            </div>
                            
                            <!--product discount-->

                            <div class="form-group">
                            <lable>Product discount</lable>
      							<br>
                                <input type="number" class="form-control" placeholder="Enter product discount" name="pDiscount" required />
                            </div>
                            
                            <!--product quantity-->

                            <div class="form-group">
                            <lable>Product Quantity</lable>
      							<br>
                                <input type="number" class="form-control" placeholder="Enter product Quantity" name="pQuantity" required />
                            </div>
                            
                            <!--product category-->

                            


                            <div class="form-group">
                            <lable>Product Category</lable>
      							<br>
                                <select name="catId" class="form-control" id="">
                                    <%                                        for (Category c : list) {
                                    %>
                                    <option value="<%= c.getCategory_id()%>"> <%= c.getCategory_name()%> </option>
                                    <%}%>
                                </select>

                            </div>
                            
                            <div class="form-group">
                            <lable>Product weight in gm</lable>
      							<br>
                                <input type="number" class="form-control" placeholder="Enter product Weight" name="pweight" required />
                            </div>
                            
               		 <div class="form-group">
                		<lable>Product price in rupees</lable>
      							<br>
                                <input type="number" class="form-control" placeholder="Enter price of product" name="pPrice" required />
                            </div>
                            
                            <!--product description-->

                            <div class="form-group">
                            <lable>Product Description</lable>
      							<br>
                                <textarea style="height: 150px;" class="form-control" placeholder="Enter product description" name="pDesc"></textarea>

                            </div>
                            
                             <!--submit button-->
                            <div class="container text-center">

                                <button class="btn btn-outline-success">Add product</button>

                            </div>
                            <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>

                           


                            
      	</form>
        
      </div>
     
    </div>
  </div>
</div>
</body>
</html>