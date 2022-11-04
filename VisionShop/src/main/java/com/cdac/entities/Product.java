package com.cdac.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.servlet.http.Part;

import java.sql.Blob;


@Entity
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Prod_id;
	private String Prod_name;
	private String Picture;
	private double Discount;
	private int Quantity;
	private double Weight;
	private double Price;
	private String Prod_description;
	
	@ManyToOne
	private Category category;
	public Product() {
		super();
	}
	
	
	public Product(int prod_id, String prod_name, String picture, double discount, int quantity,
			double weight, double price, String prod_description, Category category) {
		super();
		Prod_id = prod_id;
		Prod_name = prod_name;
		Picture = picture;
		Discount = discount;
		Quantity = quantity;
		Weight = weight;
		Price = price;
		Prod_description = prod_description;
		this.category = category;
	}


	public Product( String prod_name, String picture, double discount,
			int quantity, double weight, double price, String prod_description) {
		super();
		
		Prod_name = prod_name;
		Picture = picture;
		Discount = discount;
		Quantity = quantity;
		Weight = weight;
		Price = price;
		Prod_description = prod_description;
	}
	public int getProd_id() {
		return Prod_id;
	}
	public void setProd_id(int prod_id) {
		Prod_id = prod_id;
	}
	public String getProd_name() {
		return Prod_name;
	}
	public void setProd_name(String prod_name) {
		Prod_name = prod_name;
	}
	
	


	public String getPicture() {
		return Picture;
	}
	public void setPicture(String string) {
		Picture = string;
	}
	public double getDiscount() {
		return Discount;
	}
	public void setDiscount(double discount) {
		Discount = discount;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public double getWeight() {
		return Weight;
	}
	public void setWeight(double weight) {
		Weight = weight;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public String getProd_description() {
		return Prod_description;
	}
	public void setProd_description(String prod_description) {
		Prod_description = prod_description;
	}
	
	
	
	
	public Category getCategory() {
		return category;
	}


	public void setCategory(Category category) {
		this.category = category;
	}


	@Override
	public String toString() {
		return "Product [Prod_id=" + Prod_id + ", Prod_name=" + Prod_name +  ", Picture="
				+ Picture + ", Discount=" + Discount + ", Quantity=" + Quantity + ", Weight=" + Weight + ", Price="
				+ Price + ", Prod_description=" + Prod_description + ", category=" + category + "]";
	}


	
	//calculate price after discount
	
	public double getPriceafterDiscount() {
		
		int d=(int)((this.getDiscount()/100.0)*this.getPrice());
		return this.getPrice()-d;
	}
	
	
	
	
	
	

}