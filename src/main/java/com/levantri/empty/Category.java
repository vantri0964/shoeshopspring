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
import javax.validation.constraints.Null;

import org.hibernate.annotations.ManyToAny;

import com.sun.istack.Nullable;

@Entity(name = "categories")
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	private Integer id_parent;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<Product> products;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
	private Set<Sugest> sugests;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="id_parent")
	private Set<Category> parents;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_parent", insertable = false, updatable = false)
	private Category category;
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public int getId_parent() {
		return id_parent;
	}
	public void setId_parent(int id_parent) {
		this.id_parent = id_parent;
	}
	public Set<Category> getParents() {
		return parents;
	}
	public void setParents(Set<Category> parents) {
		this.parents = parents;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	public Set<Sugest> getSugests() {
		return sugests;
	}
	public void setSugests(Set<Sugest> sugests) {
		this.sugests = sugests;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Category() {
		// TODO Auto-generated constructor stub
	}
}
