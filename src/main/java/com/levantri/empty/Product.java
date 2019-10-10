		package com.levantri.empty;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date;

@Entity(name="products")
public class Product {
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private int id;
//	private String name;
//	private String description;
//	private float price;
//	@ManyToMany(cascade = CascadeType.ALL)
//	@JoinTable(name = "user_products", 
//	joinColumns = {@JoinColumn(name = "id_product", referencedColumnName = "id")}, 
//	inverseJoinColumns = {@JoinColumn(name = "id_user", referencedColumnName = "id")})
//	@JoinColumn(name="id_user")
//	User user;
//	Set<User> user;
//	public User getUser() {
//		return user;
//	}
//
//
//	public void setUser(User user) {
//		this.user = user;
//	}


//	public Product(String name, String description, float price){
//		this.name = name;
//		this.description = description;
//		this.price = price;
//	}
//	
//	public Set<User> getUser() {
//		return user;
//	}
//
//	public void setUser(Set<User> user) {
//		this.user = user;
//	}	
//	
//	public int getId() {
//		return id;
//	}
//
//	public void setId(int id) {
//		this.id = id;
//	}
//
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}
//
//	public String getDescription() {
//		return description;
//	}
//
//	public void setDescription(String description) {
//		this.description = description;
//	}
//
//	public float getPrice() {
//		return price;
//	}
//
//	public void setPrice(float price) {
//		this.price = price;
//	}
//
//	@Override
//	public String toString() {
//		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + "]";
//	}
//
//	public Product() {
//		// TODO Auto-generated constructor stub
//	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	private float price;
	private String image;
	private int status;
	private int count;
	@Temporal(TemporalType.TIMESTAMP)
	private Date created_at;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<Image> images;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_category")
	private Category category;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<OrderProduct> order_products;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<Comment> comments;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<Rating> ratings;
	
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_product")
	private Set<ProductDetail> product_details;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Set<ProductDetail> getProduct_details() {
		return product_details;
	}
	public void setProduct_details(Set<ProductDetail> product_details) {
		this.product_details = product_details;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Set<OrderProduct> getOrder_products() {
		return order_products;
	}
	public void setOrder_products(Set<OrderProduct> order_products) {
		this.order_products = order_products;
	}
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	public Set<Rating> getRatings() {
		return ratings;
	}
	public void setRatings(Set<Rating> ratings) {
		this.ratings = ratings;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Set<Image> getImages() {
		return images;
	}
	public void setImages(Set<Image> images) {
		this.images = images;
	}

	
	
}
