package com.cdac.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Delivery_person {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	
	private int D_id;
	private String D_fname;
	private String D_lname;
	private String D_password;
	private String D_email;
	enum D_gender{Male,Female,Other;}
	private int D_contact;
	private String D_status;
	
	@OneToMany(mappedBy="delivery_person")
	private List<Delivery> delivery=new ArrayList<Delivery>();

	public Delivery_person(int d_id, String d_fname, String d_lname, String d_password, String d_email, int d_contact,
			String d_status, List<Delivery> delivery) {
		super();
		D_id = d_id;
		D_fname = d_fname;
		D_lname = d_lname;
		D_password = d_password;
		D_email = d_email;
		D_contact = d_contact;
		D_status = d_status;
		this.delivery = delivery;
	}

	public Delivery_person(int d_id, String d_fname, String d_lname, String d_password, String d_email, int d_contact,
			String d_status) {
		super();
		D_id = d_id;
		D_fname = d_fname;
		D_lname = d_lname;
		D_password = d_password;
		D_email = d_email;
		D_contact = d_contact;
		D_status = d_status;
	}

	public Delivery_person(String d_fname, String d_lname, String d_password, String d_email, int d_contact,
			String d_status) {
		super();
		D_fname = d_fname;
		D_lname = d_lname;
		D_password = d_password;
		D_email = d_email;
		D_contact = d_contact;
		D_status = d_status;
	}

	public Delivery_person() {
		super();
	}

	public int getD_id() {
		return D_id;
	}

	public void setD_id(int d_id) {
		D_id = d_id;
	}

	public String getD_fname() {
		return D_fname;
	}

	public void setD_fname(String d_fname) {
		D_fname = d_fname;
	}

	public String getD_lname() {
		return D_lname;
	}

	public void setD_lname(String d_lname) {
		D_lname = d_lname;
	}

	public String getD_password() {
		return D_password;
	}

	public void setD_password(String d_password) {
		D_password = d_password;
	}

	public String getD_email() {
		return D_email;
	}

	public void setD_email(String d_email) {
		D_email = d_email;
	}

	public int getD_contact() {
		return D_contact;
	}

	public void setD_contact(int d_contact) {
		D_contact = d_contact;
	}

	public String getD_status() {
		return D_status;
	}

	public void setD_status(String d_status) {
		D_status = d_status;
	}
	
	

	public List<Delivery> getDelivery() {
		return delivery;
	}

	public void setDelivery(List<Delivery> delivery) {
		this.delivery = delivery;
	}

	@Override
	public String toString() {
		return "Delivery_person [D_id=" + D_id + ", D_fname=" + D_fname + ", D_lname=" + D_lname + ", D_password="
				+ D_password + ", D_email=" + D_email + ", D_contact=" + D_contact + ", D_status=" + D_status + "]";
	}
	
	
	
}
