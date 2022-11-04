package com.cdac.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import com.cdac.Dao.Userdao;
import com.cdac.entities.User;
import com.cdac.helper.FactoryProvider;


public class LoginServlet extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String email=request.getParameter("email");
            String pass=request.getParameter("password");
            
            //authentication of user
            
            Userdao udao=new Userdao(FactoryProvider.getFactory());
            User user=udao.getUserByEmailAndPassword(email, pass);
            //System.out.println(user);
            
            HttpSession httpsession=request.getSession();
            
            if(user==null) {
            	
            	
            	httpsession.setAttribute("message", "Invalid Details! Please try again.");
            	response.sendRedirect("login.jsp");
            	return;
            }else {
            	out.println("<h1>Welcome "+user.getUser_fname()+"</h1>");
            	
            	//login
            	httpsession.setAttribute("current-user",user);
            	
            	if(user.getLogin_role().equals("Admin")) {
            		//admin.jsp
            		
            		response.sendRedirect("admin.jsp");
            	}else if(user.getLogin_role().equals("Customer")) {
            		response.sendRedirect("Home.jsp");
            	}
            	else {
            		out.println("We have not Identified User type!Please try again.");
            	}
            	
            	
            	
            	//normal/home.jsp
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
