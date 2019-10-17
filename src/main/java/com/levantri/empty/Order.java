package com.levantri.empty;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;

import org.hibernate.annotations.ColumnDefault;

@Entity(name = "orders")
public class Order {
	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int id;
	private float total_price;
//	@Temporal(TemporalType.TIMESTAMP)
//	@ColumnDefault("1/12")
//	private Date created_at;
	private int id_user;
	@Column(nullable = true)
	private int id_user_bank;
	@ColumnDefault("1")
	private int status;
	@NotEmpty(message = "Thành phố không được để trống")
	private String city;
	@NotEmpty(message = "Địa chỉ không được để trống")
	private String address;
	@Column(nullable = true)
	private String branch;
	@NotEmpty(message = "Điện thoại không được để trống")
	private String phone;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_user", insertable = false, updatable = false)
	private User user;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_user_bank", insertable = false, updatable = false)
	private Bank user_bank;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_order")
	private Set<OrderProduct> order_product;
	
	
	
	public int getId_user_bank() {
		return id_user_bank;
	}


	public void setId_user_bank(int id_user_bank) {
		this.id_user_bank = id_user_bank;
	}


	public int getId_user() {
		return id_user;
	}


	public void setId_user(int id_user) {
		this.id_user = id_user;
	}


	public Set<OrderProduct> getOrder_product() {
		return order_product;
	}


	public void setOrder_product(Set<OrderProduct> order_product) {
		this.order_product = order_product;
	}


	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

//	@ManyToOne(cascade = CascadeType.ALL)
//	@JoinColumn(name = "id_promotion")
//	private Promotion promotion;
	
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

//	public Date getCreated_at() {
//		return created_at;
//	}
//
//	public void setCreated_at(Date created_at) {
//		this.created_at = created_at;
//	}

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

	public Bank getUser_bank() {
		return user_bank;
	}

	public void setUser_bank(Bank user_bank) {
		this.user_bank = user_bank;
	}
//
//	public Promotion getPromotion() {
//		return promotion;
//	}
//
//	public void setPromotion(Promotion promotion) {
//		this.promotion = promotion;
//	}

	public Order() {
		// TODO Auto-generated constructor stub
	}
}
