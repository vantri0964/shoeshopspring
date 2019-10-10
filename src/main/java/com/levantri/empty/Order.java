package com.levantri.empty;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.ColumnDefault;

@Entity(name = "orders")
public class Order {
	
	@Id
	private int id;
	private float total_price;
	@Temporal(TemporalType.TIMESTAMP)
	private Date created_at;
	@ColumnDefault("1")
	private int status;
	private String city;
	private String address;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_user")
	private User user;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_user_bank")
	private UserBank user_bank;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_promotion")
	private Promotion promotion;
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public float getTotal_price() {
		return total_price;
	}

	public void setTotal_price(float total_price) {
		this.total_price = total_price;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserBank getUser_bank() {
		return user_bank;
	}

	public void setUser_bank(UserBank user_bank) {
		this.user_bank = user_bank;
	}

	public Promotion getPromotion() {
		return promotion;
	}

	public void setPromotion(Promotion promotion) {
		this.promotion = promotion;
	}

	public Order() {
		// TODO Auto-generated constructor stub
	}
}
