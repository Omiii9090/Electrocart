package com.cdac.servlets;

import com.cdac.entities.OrderDetails;
import com.cdac.entities.User;
import com.cdac.helper.FactoryProvider;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

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


public class OrderDetailsServlet extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            try {
                
            	String Email = request.getParameter("email");
                String Fname = request.getParameter("fname");
                String Lname = request.getParameter("lname");
                int Prodno = Integer.parseInt(request.getParameter("prodno"));
                double Price =Double.parseDouble(request.getParameter("price"));
                String Address = request.getParameter("address");
                String Date = request.getParameter("date");
                

                
                //creating user object to store data
                OrderDetails orderdetails= new OrderDetails(Email, Fname, Lname, Prodno, Price, Address, Date);
                
                Session hibernateSession = FactoryProvider.getFactory().openSession();
                Transaction tx = hibernateSession.beginTransaction();                
                int Order_id = (int) hibernateSession.save(orderdetails);                
                tx.commit();
                hibernateSession.close();                
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message", "Order Placed !! Order id is " +Order_id);                
                response.sendRedirect("Home.jsp");
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
