package com.levantri.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.levantri.empty.Product;

import com.levantri.empty.User;

@Controller
@RequestMapping("admin/product/")
public class AdminProduct_Controller {
	@Autowired
	SessionFactory sessionFactory;

	@GetMapping
	@Transactional
	public String index(ModelMap modelMap) {
		Session session = sessionFactory.getCurrentSession();
//		String sql = "from products";
//		List<Product> productLists = session.createQuery(sql).getResultList();
//		modelMap.addAttribute("productLists", productLists);
//		for(Product f: productLists) {
//			System.out.println("Name" + f.getName());
//		}
		
//		session.save(user_one);
//		
//		User user = session.get(User.class, 3);
	
		User user = new User("Thuy ưefoanh21", "one@12f31", "Ung thxi Tfhuy oanh1");
		User user1 = new User("TRi", "Tri@12f31", "Un tri");
//		Product product1 = new Product("Shoe41", "Giay My11", 87);
//		product1.setUser(user);
		
//		Product product2= new Product("Shoe5f", "Giasy My2", 84);
//		product2.setUser(user);
//		Product product3 = new Product("Shoe6", "Giay M3y", 65);
		Set<User> users = new HashSet<User>();
//		products.add(product1);
//		products.add(product2);
//		products.add(product3);
//		listPr.add(product3);
//		product1.setUser(user_one);
		users.add(user);
		users.add(user1);
////	
//		product1.setUser(users);
////		session.save(user_one);
//		session.save(product1);
		return "admin/Product_index";
	}
	
	@GetMapping("new/")
	public String New() {
		return "admin/Product_new";
	}
	
	@PostMapping("create/")
	@Transactional
	public String create(@RequestParam String name, @RequestParam String description, @RequestParam float price) {
		Session session = sessionFactory.getCurrentSession();
//		Product product = new Product(name, description, price);
//		session.save(product);
		return "redirect:/home/";
	}
	
	

}
