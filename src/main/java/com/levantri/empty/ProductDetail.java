package com.levantri.empty;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@SuppressWarnings("serial")
@Entity(name = "product_details")
public class ProductDetail implements Serializable {
	@Id
	private Integer id_product;
	@Id
	private Integer id_size;
	@Id
	private Integer id_color;
	private int count;
	@Temporal(TemporalType.TIMESTAMP)
	private Date created_at;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_color")
	private Color color;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_size")
	private Size size;

	public Size getSize() {
		return size;
	}
	public void setSize(Size size) {
		this.size = size;
	}
	public Color getColor() {
		return color;
	}
	public void setColor(Color color) {
		this.color = color;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public int getId_size() {
		return id_size;
	}
	public void setId_size(int id_size) {
		this.id_size = id_size;
	}
	public int getId_color() {
		return id_color;
	}
	public void setId_color(int id_color) {
		this.id_color = id_color;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	
}
