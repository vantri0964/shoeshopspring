package com.levantri.empty;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity(name="users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="email")
	@Email(message = "Email invalidate")
	private String username;
	@NotEmpty(message = "Password not empty")
	@Size(max = 20, min = 6, message = "Password min size 6")
	private String password;
	@NotEmpty(message = "Name not empty")
	private String name;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<Ship> ships;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<Comment> comments;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<Order> orders;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<Rating> ratings;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<Sugest> sugests;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<UserBank> user_banks;
	@Transient
	private String passwordconfirm;
	public String getPasswordconfirm() {
		return passwordconfirm;
	}

	public void setPasswordconfirm(String passwordconfirm) {
		this.passwordconfirm = passwordconfirm;
	}

	public Set<Ship> getShips() {
		return ships;
	}

	public void setShips(Set<Ship> ships) {
		this.ships = ships;
	}

	public Set<Comment> getComments() {
		return comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}

	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	public Set<Rating> getRatings() {
		return ratings;
	}

	public void setRatings(Set<Rating> ratings) {
		this.ratings = ratings;
	}

	public Set<Sugest> getSugests() {
		return sugests;
	}

	public void setSugests(Set<Sugest> sugests) {
		this.sugests = sugests;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

//	@OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
//	@ManyToMany(cascade = CascadeType.ALL)
//	@JoinTable(name = "user_products", 
//	joinColumns = {@JoinColumn(name = "id_user", referencedColumnName = "id")}, 
//	inverseJoinColumns = {@JoinColumn(name = "id_product", referencedColumnName = "id")})
//	Set<Product> products;
//	
//	public Set<Product> getProducts() {
//		return products;
//	}
//
//	public void setProducts(Set<Product> products) {
//		this.products = products;
//	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public User() {
		
	}
	
	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	public User(String username, String password, String name) {
		this.username = username;
		this.password = password;
		this.name = name;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
}
