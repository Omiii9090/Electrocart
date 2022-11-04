package com.cdac.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PaymentDetails {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int paymentid;
	private String Name;
	private double cardno;
	private String expiry;
	private int cvv;
	private String street;
	private String city;
	private String state;
	private double zipcode;
	
	public PaymentDetails(int paymentid, String name, double cardno, String expiry, int cvv, String street, String city,
			String state, double zipcode) {
		super();
		this.paymentid = paymentid;
		Name = name;
		this.cardno = cardno;
		this.expiry = expiry;
		this.cvv = cvv;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
	}
	
	
	public PaymentDetails(String name, double cardno, String expiry, int cvv, String street, String city, String state,
			double zipcode) {
		super();
		Name = name;
		this.cardno = cardno;
		this.expiry = expiry;
		this.cvv = cvv;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
	}


	public PaymentDetails() {
		super();
	}
	
	public String getName() {
		return Name;
	}


	public void setName(String name) {
		Name = name;
	}


	public void setZipcode(double zipcode) {
		this.zipcode = zipcode;
	}


	public int getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}
	public double getCardno() {
		return cardno;
	}
	public void setCardno(double cardno) {
		this.cardno = cardno;
	}
	public String getExpiry() {
		return expiry;
	}
	public void setExpiry(String expiry) {
		this.expiry = expiry;
	}
	public int getCvv() {
		return cvv;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public double getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}


	@Override
	public String toString() {
		return "PaymentDetails [paymentid=" + paymentid + ", Name=" + Name + ", cardno=" + cardno + ", expiry=" + expiry
				+ ", cvv=" + cvv + ", street=" + street + ", city=" + city + ", state=" + state + ", zipcode=" + zipcode
				+ "]";
	}
	
	
	
	
	
	
	

}
