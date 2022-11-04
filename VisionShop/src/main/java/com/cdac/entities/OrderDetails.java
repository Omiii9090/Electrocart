package com.cdac.entities;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class OrderDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Order_id;
	private String email;
	@Column(length=50)
	private String fname;
	@Column(length=50)
	private String lname;
	private int prodno;
	private double totprice;
	private String address;
	private String date;
	public OrderDetails(int order_id, String email, String fname, String lname, int prodno, double totprice, String add,
			String date) {
		super();
		Order_id = order_id;
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.prodno = prodno;
		this.totprice = totprice;
		this.address = add;
		this.date = date;
	}
	public OrderDetails(String email, String fname, String lname, int prodno, double totprice, String add,
			String date2) {
		super();
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.prodno = prodno;
		this.totprice = totprice;
		this.address = add;
		this.date = date2;
	}
	public OrderDetails() {
		super();
	}
	public int getOrder_id() {
		return Order_id;
	}
	public void setOrder_id(int order_id) {
		Order_id = order_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public int getProdno() {
		return prodno;
	}
	public void setProdno(int prodno) {
		this.prodno = prodno;
	}
	public double getTotprice() {
		return totprice;
	}
	public void setTotprice(double totprice) {
		this.totprice = totprice;
	}
	public String getAdd() {
		return address;
	}
	public void setAdd(String add) {
		this.address = add;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "OrderDetails [Order_id=" + Order_id + ", email=" + email + ", fname=" + fname + ", lname=" + lname
				+ ", prodno=" + prodno + ", totprice=" + totprice + ", add=" + address + ", date=" + date + "]";
	}
	
	
	
	

}
