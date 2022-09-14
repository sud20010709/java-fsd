package com.project.SportyShoes.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "userdetails")
@Table(name="userdetails")
public class UserDetails {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	public long user_id;
	public String username;
	public String email_id;
	public String phone;
	public String product_purchased;
	public Date purchase_date;
	public String category;
	public UserDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserDetails(long user_id, String username, String email_id, String phone, String product_purchased,
			Date purchase_date, String category) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.email_id = email_id;
		this.phone = phone;
		this.product_purchased = product_purchased;
		this.purchase_date = purchase_date;
		this.category = category;
	}
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getProduct_purchased() {
		return product_purchased;
	}
	public void setProduct_purchased(String product_purchased) {
		this.product_purchased = product_purchased;
	}
	public Date getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(Date purchase_date) {
		this.purchase_date = purchase_date;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "UserDetails [user_id=" + user_id + ", username=" + username + ", email_id=" + email_id + ", phone=" + phone
				+ ", product_purchased=" + product_purchased + ", purchase_date=" + purchase_date + ", category=" + category
				+ "]";
	}
	

}