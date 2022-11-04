<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.cdac.entities.Product" %>
<%@page import="com.cdac.entities.Category" %>
<%@page import="com.cdac.Dao.Productdao" %>
<%@page import="com.cdac.Dao.Categorydao" %>
<%@page import="com.cdac.helper.FactoryProvider" %>
<%@page import="com.cdac.helper.Helper" %>
<%@page import="java.util.List" %>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setDateHeader("Expires", 0);
%>    

<%
		User user=(User)session.getAttribute("current-user");
		if(user==null){
			session.setAttribute("message","You are not logged in!Please login first.");
			response.sendRedirect("login.jsp");
			return;
		}
				
			
		


%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Page</title>
<link rel="stylesheet" type="text/css" href="components/common_css_js.jsp"/> 
<style>
	.list-group-item.active{
		background:#d81b60;
		border-color:#d81b60;
	}
	body {
  /* The image used */
  background-image: url("img/b8.jpg");
  }
	.custom-bg{
    background:#d81b60!important;
}

	.btn{
		width:110px;
	}

	.discount-label{
		font-size:10px!important;
		font-style:italic!important;
		/*text-decoration:line-through!important;*/
	}
	
	.product-card:hover{
	
		background:#fff9c4;
		cursor:pointer;
	}
	
/*toast*/

#toast {
    min-width: 300px;
    position: fixed;
    bottom: 30px;
    left: 50%;
    margin-left: -120px;
    background: #333;
    padding: 15px;
    color: white;
    text-align: center;
    z-index: 1;
    font-size: 18px;
    visibility: hidden;
    box-shadow: 0px 0px 100px #000;
}

#toast.display {
    visibility: visible;
    animation: fadeIn 0.5s, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {
    from {
        bottom: 0;
        opacity: 0;
    }

    to {
        bottom: 30px;
        opacity: 1;
    }
}

@keyframes fadeOut {
    from {
        bottom: 30px;
        opacity: 1;
    }
    to {
        bottom: 0;
        opacity: 0;
    }
}
</style>
        <%@include file="components/common_css_js.jsp" %>
</head>
<body>
       <%@include file="components/navbar.jsp" %>
        
	<div class="container-fluid">
	<div class="row mt-3 mx-2">
	
		<% String cat = request.getParameter("category");
                    //out.println(cat);

                    Productdao dao = new Productdao(FactoryProvider.getFactory());
                    List<Product> list = null;

                    if (cat == null || cat.trim().equals("all")) {
                        list = dao.getAllProducts();

                    } else {

                        int cid = Integer.parseInt(cat.trim());
                        list = dao.getAllProductsById(cid);

                    }

                    Categorydao cdao = new Categorydao(FactoryProvider.getFactory());
                    List<Category> clist = cdao.getCategories();

                %>
	
		<!-- Show categories -->
		<div class="col-md-2">
		
			<div class="list-group mt-4">
				<a href="Home.jsp?category=all" class="list-group-item list-group-item-action active">
    					All Categories
  				</a>
  				
			
			
			
			
			<%
				for(Category c:clist){
					
			%>
					<a href="Home.jsp?category=<%=c.getCategory_id() %>" class="list-group-item list-group-item-action"><%= c.getCategory_name() %></a>
					
				
			<%	
				}
			%>
			</div>
		
		</div>
		
		<!-- Show products -->
		
		<div class="col-md-10">
		<%@include  file="components/message.jsp" %>
			
			<div class="row mt-4">
			
				<div class="col-md-12">
					<div class="card-columns">
						
						<%
							for(Product p : list){
					
						
						%>
						
						<div class="card product-card">
						<div class="container text-center">
							<img  class="card-img-top m-2" src="img/products/<%= p.getPicture() %>" style="max-height:200px;max-width:100%; with:auto" alt="Card image cap">
						
						</div>	
							<div class="card-body">
								<h5 class="card-title"><%= p.getProd_name() %></h5>
								<p class="card-text">
								<%= Helper.get10Words(p.getProd_description()) %>
								</p>
							</div>
							
							<div class="card-footer text-center">
							
								<button class="btn custom-bg text-white" onclick=" add_to_cart(<%= p.getProd_id() %>,'<%= p.getProd_name() %>',<%= p.getPriceafterDiscount() %>)">Add to Cart</button> 
								<button class="btn btn-outline-success"> &#8377;<%= p.getPriceafterDiscount() %>/- <span class="text-secondary discount-label"> &#8377; <%= p.getPrice()%> <%= p.getDiscount() %>% off</span></button> 
							
							</div>
						</div>
						
						<%
						
						
							}
						
						if(list.size()==0){
							out.println("<h3>No Items in this Category</h3>");
						}
						
						%>
						
						
						
						
					</div>
				</div>
				
			</div>
		</div>
		
	</div>
	</div>
	<%@include file="components/add_to_cart_model.jsp" %>
</body>
</html>