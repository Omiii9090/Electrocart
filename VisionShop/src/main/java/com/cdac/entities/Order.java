package com.cdac.entities;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


@Entity
public class Order {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Order_id;
	private java.sql.Date order_date;
	private int Num_of_prod;
	private java.sql.Date Shipped_date;
	private double Discount;
	private double Total_price;
	
	@ManyToOne
	private Customer customer;
	
	@OneToOne
	private Delivery delivery;
	
	@OneToOne
	private Payment payment;
	
	public Order() {
		super();
	}

	public Order(int order_id, Date order_date, int num_of_prod, Date shipped_date, double discount, double total_price,
			Customer customer, Delivery delivery, Payment payment) {
		super();
		Order_id = order_id;
		this.order_date = order_date;
		Num_of_prod = num_of_prod;
		Shipped_date = shipped_date;
		Discount = discount;
		Total_price = total_price;
		this.customer = customer;
		this.delivery = delivery;
		this.payment = payment;
	}

	public Order(Date order_date, int num_of_prod, Date shipped_date, double discount, double total_price) {
		super();
		this.order_date = order_date;
		Num_of_prod = num_of_prod;
		Shipped_date = shipped_date;
		Discount = discount;
		Total_price = total_price;
	}

	public int getOrder_id() {
		return Order_id;
	}

	public void setOrder_id(int order_id) {
		Order_id = order_id;
	}

	public java.sql.Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(java.sql.Date order_date) {
		this.order_date = order_date;
	}

	public int getNum_of_prod() {
		return Num_of_prod;
	}

	public void setNum_of_prod(int num_of_prod) {
		Num_of_prod = num_of_prod;
	}

	public java.sql.Date getShipped_date() {
		return Shipped_date;
	}

	public void setShipped_date(java.sql.Date shipped_date) {
		Shipped_date = shipped_date;
	}

	public double getDiscount() {
		return Discount;
	}

	public void setDiscount(double discount) {
		Discount = discount;
	}

	public double getTotal_price() {
		return Total_price;
	}

	public void setTotal_price(double total_price) {
		Total_price = total_price;
	}
	
	

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	public Delivery getDelivery() {
		return delivery;
	}

	public void setDelivery(Delivery delivery) {
		this.delivery = delivery;
	}
	
	
	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "Order [Order_id=" + Order_id + ", order_date=" + order_date + ", Num_of_prod=" + Num_of_prod
				+ ", Shipped_date=" + Shipped_date + ", Discount=" + Discount + ", Total_price=" + Total_price + "]";
	}
	
	

	
	
	
	
	
}