package com.cdac.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


import com.cdac.entities.Category;

public class Categorydao {
	
	private SessionFactory factory;

	public Categorydao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public int saveCategory(Category cat) {
		
		Session session=this.factory.openSession();
		Transaction tx=session.beginTransaction();
		
		int catId=(int)session.save(cat);
		
		tx.commit();
		
		session.close();
		return catId;
	}
	
	public List<Category> getCategories(){
		Session s=this.factory.openSession();
		Query query=s.createQuery("from Category");
		List<Category> list=query.list();
		return list;
	}
	
	public Category getCategoryById(int cid)
	{
		Category cat=null;
		try {
			
			Session session=this.factory.openSession();
			cat=(Category) session.get(Category.class, cid);
			session.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cat;
	}
	
	
}
