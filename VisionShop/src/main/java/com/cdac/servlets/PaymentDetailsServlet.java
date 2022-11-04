package com.cdac.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cdac.entities.OrderDetails;
import com.cdac.entities.PaymentDetails;
import com.cdac.helper.FactoryProvider;


public class PaymentDetailsServlet extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
try {
                String Name=request.getParameter("name");
            	double CardNo = Double.parseDouble(request.getParameter("cardno"));
                String Expiry = request.getParameter("expiry");
                int CVV = Integer.parseInt(request.getParameter("cvv"));
                String Street = request.getParameter("street");
                String City = request.getParameter("city");
                String State = request.getParameter("state");
                double ZipCode = Double.parseDouble(request.getParameter("code"));
                

                
                //creating user object to store data
                PaymentDetails paymentdetails= new PaymentDetails(Name, CardNo, Expiry, CVV, Street, City, State, ZipCode);
                
                Session hibernateSession = FactoryProvider.getFactory().openSession();
                Transaction tx = hibernateSession.beginTransaction();                
                int paymentid = (int) hibernateSession.save(paymentdetails);                
                tx.commit();
                hibernateSession.close();                
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message", "Payment Successful !! Payment id is " +paymentid);                
                response.sendRedirect("PaymentSuccess.jsp");
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
