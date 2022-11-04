package com.cdac.entities;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Payment {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Payment_id;
	private String payment_Address;
	private java.sql.Date payment_Date;
	enum Payment_Mode{Cash_on_delivery,Creditcard_Debitcard,Net_Banking,UPI,EMI;}
	private double Payment_Amount;
	
	@OneToOne
	private Order order;
	
	@OneToOne
	private Transaction_Details transaction_Details;

	public Payment() {
		super();
	}

	public Payment(int payment_id, String payment_Address, Date payment_Date, double payment_Amount, Order order, Transaction_Details transaction_Details) {
		super();
		Payment_id = payment_id;
		this.payment_Address = payment_Address;
		this.payment_Date = payment_Date;
		Payment_Amount = payment_Amount;
		this.order = order;
		this.transaction_Details = transaction_Details;
	}

	public Payment(String payment_Address, Date payment_Date, double payment_Amount) {
		super();
		this.payment_Address = payment_Address;
		this.payment_Date = payment_Date;
		Payment_Amount = payment_Amount;
	}

	public int getPayment_id() {
		return Payment_id;
	}

	public void setPayment_id(int payment_id) {
		Payment_id = payment_id;
	}

	public String getPayment_Address() {
		return payment_Address;
	}

	public void setPayment_Address(String payment_Address) {
		this.payment_Address = payment_Address;
	}

	public java.sql.Date getPayment_Date() {
		return payment_Date;
	}

	public void setPayment_Date(java.sql.Date payment_Date) {
		this.payment_Date = payment_Date;
	}

	public double getPayment_Amount() {
		return Payment_Amount;
	}

	public void setPayment_Amount(double payment_Amount) {
		Payment_Amount = payment_Amount;
	}

	
	
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	
	public Transaction_Details getTransaction_Details() {
		return transaction_Details;
	}

	public void setTransaction_Details(Transaction_Details transaction_Details) {
		this.transaction_Details = transaction_Details;
	}

	@Override
	public String toString() {
		return "Payment [Payment_id=" + Payment_id + ", payment_Address=" + payment_Address + ", payment_Date="
				+ payment_Date + ", Payment_Amount=" + Payment_Amount + "]";
	}
	
	
}
