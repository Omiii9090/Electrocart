package com.cdac.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.cdac.entities.OrderDetails;



public class OrderDao {
	
	private SessionFactory factory;

	public OrderDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public int saveOrder(OrderDetails oid) {
		
		Session session=this.factory.openSession();
		Transaction tx=session.beginTransaction();
		
		int OrderId=(int)session.save(oid);
		
		tx.commit();
		
		session.close();
		return OrderId;
	}
	
	public List<OrderDetails> getOrders(){
		Session s=this.factory.openSession();
		Query query=s.createQuery("from OrderDetails");
		List<OrderDetails> list=query.list();
		return list;
	}

}
