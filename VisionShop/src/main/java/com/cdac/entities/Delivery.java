package com.cdac.entities;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Delivery {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Delivery_id;
	private java.sql.Date D_Date;
	enum D_status{Delivered,UnDelievered;}
	
	@ManyToOne
	private Delivery_person delivery_person;
	
	@OneToOne
	private Order order;
	
	public Delivery() {
		super();
	}

	public Delivery(int delivery_id, Date d_Date, Delivery_person delivery_person, Order order) {
		super();
		Delivery_id = delivery_id;
		D_Date = d_Date;
		this.delivery_person = delivery_person;
		this.order = order;
	}

	public Delivery(Date d_Date) {
		super();
		D_Date = d_Date;
	}
	

	public int getDelivery_id() {
		return Delivery_id;
	}

	public void setDelivery_id(int delivery_id) {
		Delivery_id = delivery_id;
	}

	public java.sql.Date getD_Date() {
		return D_Date;
	}

	public void setD_Date(java.sql.Date d_Date) {
		D_Date = d_Date;
	}
	
	

	public Delivery_person getDelivery_person() {
		return delivery_person;
	}

	public void setDelivery_person(Delivery_person delivery_person) {
		this.delivery_person = delivery_person;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	@Override
	public String toString() {
		return "Delivery [Delivery_id=" + Delivery_id + ", D_Date=" + D_Date + "]";
	}
	
	
	
	
	
}
