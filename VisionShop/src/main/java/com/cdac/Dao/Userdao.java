package com.cdac.Dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.cdac.entities.User;

public class Userdao {
	
	private SessionFactory factory;

	public Userdao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	//get user by email and password
	
	public User getUserByEmailAndPassword(String email, String password)
	{
		User user=null;
		
		try {
			
			String query="from User where email =:e and Password =:p";
			Session session=this.factory.openSession();
			Query q=session.createQuery(query);
			q.setParameter("e", email);
			q.setParameter("p", password);
			user=(User) q.uniqueResult();
			
			
			
			session.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return user;
	}


	}


