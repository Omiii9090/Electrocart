package com.cdac.main;
import com.cdac.entities.*;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class AppMain {

	public static void main(String[] args) {

		Configuration config = new Configuration();
		config.configure("hibernate.cfg.xml");
		
		SessionFactory sf = config.buildSessionFactory();
		
		Session session = sf.openSession();
		
		Transaction transaction = session.beginTransaction();
		
		Query query = session.createQuery("FROM Product");
		
		List<Product> lst = query.list();
		
		if(lst.size() > 0) {
			for(Product product : lst) {
				System.out.println(product);
			}
		}
		else
			System.out.println("no products found");
		
		transaction.commit();
		
		sf.close();
	}
}








