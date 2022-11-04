package com.cdac.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Customer {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Cust_id;
	private String Cust_fname;
	private String Cust_lname;
	private String Cust_email;
	private int Cust_contact;
	enum Cust_gender{Male,Female,Other;}
	private String Cust_password;
	private String Cust_address;
	
	@OneToMany(mappedBy="customer")
	private List<Order> orders=new ArrayList<Order>();
	
	@OneToOne
	private Transaction_Details transaction_Details;
	
	public Customer(int cust_id, String cust_fname, String cust_lname, String cust_email, int cust_contact,
			String cust_password, String cust_address, List<Order> orders, Transaction_Details transaction_Details) {
		super();
		Cust_id = cust_id;
		Cust_fname = cust_fname;
		Cust_lname = cust_lname;
		Cust_email = cust_email;
		Cust_contact = cust_contact;
		Cust_password = cust_password;
		Cust_address = cust_address;
		this.orders = orders;
		this.transaction_Details =transaction_Details;
	}

	public Customer(int cust_id, String cust_fname, String cust_lname, String cust_email, int cust_contact,
			String cust_password, String cust_address) {
		super();
		Cust_id = cust_id;
		Cust_fname = cust_fname;
		Cust_lname = cust_lname;
		Cust_email = cust_email;
		Cust_contact = cust_contact;
		Cust_password = cust_password;
		Cust_address = cust_address;
	}

	public Customer(String cust_fname, String cust_lname, String cust_email, int cust_contact, String cust_password,
			String cust_address, List<Order> orders, Transaction_Details transaction_Details) {
		super();
		Cust_fname = cust_fname;
		Cust_lname = cust_lname;
		Cust_email = cust_email;
		Cust_contact = cust_contact;
		Cust_password = cust_password;
		Cust_address = cust_address;
		this.orders = orders;
		this.transaction_Details = transaction_Details;
	}

	public Customer() {
		super();
	}

	public int getCust_id() {
		return Cust_id;
	}

	public void setCust_id(int cust_id) {
		Cust_id = cust_id;
	}

	public String getCust_fname() {
		return Cust_fname;
	}

	public void setCust_fname(String cust_fname) {
		Cust_fname = cust_fname;
	}

	public String getCust_lname() {
		return Cust_lname;
	}

	public void setCust_lname(String cust_lname) {
		Cust_lname = cust_lname;
	}

	public String getCust_email() {
		return Cust_email;
	}

	public void setCust_email(String cust_email) {
		Cust_email = cust_email;
	}

	public int getCust_contact() {
		return Cust_contact;
	}

	public void setCust_contact(int cust_contact) {
		Cust_contact = cust_contact;
	}

	public String getCust_password() {
		return Cust_password;
	}

	public void setCust_password(String cust_password) {
		Cust_password = cust_password;
	}

	public String getCust_address() {
		return Cust_address;
	}

	public void setCust_address(String cust_address) {
		Cust_address = cust_address;
	}
	
	

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	
	
	public Transaction_Details getTransaction_Details() {
		return transaction_Details;
	}

	public void setTransaction_Details(Transaction_Details transaction_Details) {
		this.transaction_Details = transaction_Details;
	}

	@Override
	public String toString() {
		return "Customer [Cust_id=" + Cust_id + ", Cust_fname=" + Cust_fname + ", Cust_lname=" + Cust_lname
				+ ", Cust_email=" + Cust_email + ", Cust_contact=" + Cust_contact + ", Cust_password=" + Cust_password
				+ ", Cust_address=" + Cust_address + "]";
	}
	
	
}
