package com.cdac.entities;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(length=50)
	private int User_id;
	@Column(length=50)
	private String User_fname;
	@Column(length=50)
	private String User_lname;
	@Column(length=30)
	private String Password;
	@Column(length=50)
	private String email;
	@Column(length=70)
	private String Login_role;
	public User(int user_id, String user_fname, String user_lname, String password, String email, String login_role) {
		super();
		User_id = user_id;
		User_fname = user_fname;
		User_lname = user_lname;
		Password = password;
		this.email = email;
		Login_role = login_role;
	}
	public User(String user_fname, String user_lname, String password, String email, String login_role) {
		super();
		User_fname = user_fname;
		User_lname = user_lname;
		Password = password;
		this.email = email;
		Login_role = login_role;
	}
	public User() {
		super();
	}
	public int getUser_id() {
		return User_id;
	}
	public void setUser_id(int user_id) {
		User_id = user_id;
	}
	public String getUser_fname() {
		return User_fname;
	}
	public void setUser_fname(String user_fname) {
		User_fname = user_fname;
	}
	public String getUser_lname() {
		return User_lname;
	}
	public void setUser_lname(String user_lname) {
		User_lname = user_lname;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLogin_role() {
		return Login_role;
	}
	public void setLogin_role(String login_role) {
		Login_role = login_role;
	}
	@Override
	public String toString() {
		return "User [User_id=" + User_id + ", User_fname=" + User_fname + ", User_lname=" + User_lname + ", Password="
				+ Password + ", email=" + email + ", Login_role=" + Login_role + "]";
	}
	
}

