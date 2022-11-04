package com.cdac.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import javax.persistence.Id;



import com.cdac.Dao.Categorydao;
import com.cdac.entities.Category;
import com.cdac.helper.FactoryProvider;
import com.cdac.entities.Product;
import com.cdac.Dao.Productdao;



@MultipartConfig
public class CategoryOperations extends HttpServlet {
	
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        	
        	
        	
        	String op=request.getParameter("operation");
        	
        	if(op.trim().equals("addcategory")) {
        		
        		//fetching category data
            	
            	String name=request.getParameter("categoryname");
            	String type=request.getParameter("category_type");
            	String desc=request.getParameter("catdescription");
            	
            	Category category=new Category();
            	category.setCategory_name(name);
            	category.setCategory_type(type);
            	category.setCategory_desc(desc);
            	
            	//save category in database
            	
            	Categorydao catdao=new Categorydao(FactoryProvider.getFactory());
            	int catId=catdao.saveCategory(category);
            	//out.println("Category saved");
            	
            	HttpSession httpsession=request.getSession();
            	httpsession.setAttribute("message", "Category added Successfully! Category Id is: "+catId);
            	response.sendRedirect("admin.jsp");
            	return;
        		
        	}else if(op.trim().equals("addproduct")) {
        		
        		

        		String Pname=request.getParameter("pname");
         
            	
            	double pdisc=Double.parseDouble(request.getParameter("pDiscount"));
            	int pquant=Integer.parseInt(request.getParameter("pQuantity"));
            	double pweight=Double.parseDouble(request.getParameter("pweight"));
            	double pprice=Double.parseDouble(request.getParameter("pPrice"));
            	String pdesc=request.getParameter("pDesc");
            	int catId = Integer.parseInt(request.getParameter("catId"));
            	Part part=request.getPart("pPic");
            	
            	Product p=new Product();
            	p.setProd_name(Pname);
                p.setDiscount(pdisc);
            	p.setQuantity(pquant);
            	p.setWeight(pweight);
            	p.setPrice(pprice);
            	p.setProd_description(pdesc);
            	p.setPicture(part.getSubmittedFileName());
        		
            	//get category by id
            	
            	Categorydao cdao=new Categorydao(FactoryProvider.getFactory());
            	Category category=cdao.getCategoryById(catId);
            	
            	p.setCategory(category);
            	
            	//product save
            	
            	Productdao pdao=new Productdao(FactoryProvider.getFactory());
            	pdao.saveProduct(p);
            	
            	
            	//pic upload
            	//find out the path to upload photo
              String path = request.getRealPath("img") + File.separator + "products" + File.separator + part.getSubmittedFileName();
              System.out.println(path);

              //uploading code..
              try {

                  FileOutputStream fos = new FileOutputStream(path);

                  InputStream is = part.getInputStream();

//              reading data
                  byte[] data = new byte[is.available()];

                  is.read(data);

//              writing the data
                  fos.write(data);

                  fos.close();

              } catch (Exception e) {
                  e.printStackTrace();
              }
            	
              	out.println("Product save success!");
            	HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message", "Product is added successfully..");
                response.sendRedirect("admin.jsp");
                return;
        		
        	}
        	
        	
        	
        	
        }
        }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
		
	}

}
