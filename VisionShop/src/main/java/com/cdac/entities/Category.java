package com.cdac.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int  Category_id;
	private String Category_name;
	private String Category_type;
	private String Category_desc;
	
	@OneToMany(mappedBy="category")
	private List<Product> products=new ArrayList<Product>();
	
	
	public Category(int category_id, String category_name, String category_type, String category_desc,
			List<Product> products) {
		super();
		Category_id = category_id;
		Category_name = category_name;
		Category_type = category_type;
		Category_desc = category_desc;
		this.products = products;
	}
	public Category(int category_id, String category_name, String category_type, String category_desc) {
		super();
		Category_id = category_id;
		Category_name = category_name;
		Category_type = category_type;
		Category_desc = category_desc;
	}
	public Category(String category_name, String category_type, String category_desc) {
		super();
		Category_name = category_name;
		Category_type = category_type;
		Category_desc = category_desc;
	}
	public Category() {
		super();
	}
	public int getCategory_id() {
		return Category_id;
	}
	public void setCategory_id(int category_id) {
		Category_id = category_id;
	}
	public String getCategory_name() {
		return Category_name;
	}
	public void setCategory_name(String category_name) {
		Category_name = category_name;
	}
	public String getCategory_type() {
		return Category_type;
	}
	public void setCategory_type(String category_type) {
		Category_type = category_type;
	}
	public String getCategory_desc() {
		return Category_desc;
	}
	public void setCategory_desc(String category_desc) {
		Category_desc = category_desc;
	}
	
	
	
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	@Override
	public String toString() {
		return "Category [Category_id=" + Category_id + ", Category_name=" + Category_name + ", Category_type="
				+ Category_type + ", Category_desc=" + Category_desc + "]";
	}
	
	
	

}