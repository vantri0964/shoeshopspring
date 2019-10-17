package com.levantri.empty;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.ManyToAny;

import com.sun.xml.bind.v2.runtime.Name;

@Entity(name = "order_products")
public class OrderProduct implements Serializable{
	@Id
	private int id_order;
	@Id
	private int id_product;
	private float price;
	@ColumnDefault("1")
	private int count;
	@ColumnDefault("0")
	private int status;
	private int id_color;
	private int id_size;
	@Transient
	private String image;
	@Transient
	private String name_product;
	@Transient
	private String name_color;
	@Transient
	private String name_size;
	
	public String getName_product() {
		return name_product;
	}
	public void setName_product(String name_product) {
		this.name_product = name_product;
	}
	public String getName_color() {
		return name_color;
	}
	public void setName_color(String name_color) {
		this.name_color = name_color;
	}
	public String getName_size() {
		return name_size;
	}
	public void setName_size(String name_size) {
		this.name_size = name_size;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getId_color() {
		return id_color;
	}
	public void setId_color(int id_color) {
		this.id_color = id_color;
	}
	public int getId_size() {
		return id_size;
	}
	public void setId_size(int id_size) {
		this.id_size = id_size;
	}
	public int getId_order() {
		return id_order;
	}
	public void setId_order(int id_order) {
		this.id_order = id_order;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public OrderProduct() {
		// TODO Auto-generated constructor stub
	}
	
	public OrderProduct(int id_product, int id_color, int id_size, float price, String image,
			String name_product, String name_color, String name_size, int count) {
		this.id_product = id_product;
		this.id_color = id_color;
		this.id_size = id_size;
		this.price = price;
		this.image = image;
		this.name_product = name_product;
		this.name_color = name_color;
		this.name_size = name_size;
		this.count = count;
	}
	

}
