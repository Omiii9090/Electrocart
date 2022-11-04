package com.cdac.servlets;

import com.cdac.entities.User;
import com.cdac.helper.FactoryProvider;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.internal.util.ConfigHelper;


public class RegisterServlet extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            try {
                
                String userfName = request.getParameter("user_fname");
                String userlName = request.getParameter("user_lname");
                String userEmail = request.getParameter("user_email");
                String userPassword = request.getParameter("user_password");
                String userRole = request.getParameter("user_loginrole");
                

                // validations
                if (userfName.isEmpty()) {
                    out.println("Name is blank ");
                    return;
                }
                //creating user object to store data
                User user = new User(userfName,userlName, userEmail, userPassword, userRole);
                
                Session hibernateSession = FactoryProvider.getFactory().openSession();
                Transaction tx = hibernateSession.beginTransaction();                
                int userId = (int) hibernateSession.save(user);                
                tx.commit();
                hibernateSession.close();                
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message", "Registration Successful !! User id is " + userId);                
                response.sendRedirect("register.jsp");
                return;
            
                
                
            } catch (Exception e) {
                e.printStackTrace();
                
                
                
            }
            
        }
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 processRequest(request, response);
	}

}
