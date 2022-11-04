package com.cdac.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Transaction_Details {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private  int T_id;
	enum T_status{Completed,pending;}
	private String card_Details;
	private java.sql.Time Time;
	
	@OneToOne
	private Customer customer;
	
	@OneToOne
	private Payment payment;

	public Transaction_Details() {
		super();
	}

	public Transaction_Details(int t_id, String card_Details, java.sql.Time time, Customer customer, Payment payment) {
		super();
		T_id = t_id;
		this.card_Details = card_Details;
		Time = time;
		this.customer = customer;
		this.payment = payment;
	}

	public Transaction_Details(String card_Details, java.sql.Time time) {
		super();
		this.card_Details = card_Details;
		Time = time;
	}

	public int getT_id() {
		return T_id;
	}

	public void setT_id(int t_id) {
		T_id = t_id;
	}

	public String getCard_Details() {
		return card_Details;
	}

	public void setCard_Details(String card_Details) {
		this.card_Details = card_Details;
	}

	public java.sql.Time getTime() {
		return Time;
	}

	public void setTime(java.sql.Time time) {
		Time = time;
	}
	
	

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "Transaction_Details [T_id=" + T_id + ", card_Details=" + card_Details + ", Time=" + Time + "]";
	}
	
	
	
}
