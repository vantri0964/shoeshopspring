package com.levantri.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.levantri.empty.OrderProduct;
import com.levantri.service.ProductService;

@Controller
@SessionAttributes("proCart")
@RequestMapping("cart/")
public class Cart_Controller {
	@Autowired
	private ProductService productService;
	
	List<OrderProduct> saveOrder = new ArrayList();
	private List<OrderProduct> list;
	public Cart_Controller() {
		// TODO Auto-generated constructor stub
	}
	
	@GetMapping
	public ModelAndView indexCart() {
		ModelAndView modelView = new ModelAndView();
		return modelView;
	}
	
	@SuppressWarnings("unchecked")
	@GetMapping("create/")
	@ResponseBody
	public String createCart(@RequestParam int id_product, @RequestParam int id_color,
			@RequestParam int id_size, @RequestParam(required = false) int count,
			@RequestParam float price, @RequestParam String image,
			@RequestParam String name_product, @RequestParam String name_color, 
			@RequestParam String name_size, HttpSession httpSession) {
		
		if(null == httpSession.getAttribute("proCart")) {
			OrderProduct orderProduct = new OrderProduct(id_product, id_color, id_size, price, image,
											name_product, name_color, name_size, count);
			saveOrder.add(orderProduct);
			httpSession.setAttribute("proCart", saveOrder);
			
		}else {
			list = (List<OrderProduct>) httpSession.getAttribute("proCart");
			if(checkProduct(id_product, id_color, id_size, httpSession) != -1) {
				int i = checkProduct(id_product, id_color, id_size, httpSession);
				int count_new = list.get(i).getCount() + count;
				list.get(i).setCount(count_new);
			}else {
				OrderProduct orderProduct = new OrderProduct(id_product, id_color, id_size, price, image,
						name_product, name_color, name_size, count);
				saveOrder.add(orderProduct);
				httpSession.setAttribute("proCart", saveOrder);
			}
		}
		list = (List<OrderProduct>) httpSession.getAttribute("proCart");
		System.out.println("List la" + list.size());
		return String.valueOf(list.size());
	}
	
	@GetMapping("index/")
	public ModelAndView index(HttpSession httpSession, ModelMap modelMap) {
		ModelAndView model = new ModelAndView();
		if(httpSession.getAttribute("user_id") == null) {
			model.setViewName("redirect:/");
		}else {
			List<OrderProduct> orderProduct = (List<OrderProduct>) httpSession.getAttribute("proCart");
			model.addObject("listCart", orderProduct);
			model.setViewName("cart_index");
		}
		return model;
	}
	
	@GetMapping("checkcount/")
	@ResponseBody
	public String checkCount(HttpSession httpSession, @RequestParam int id_product, @RequestParam int count) {
		int countProduct = productService.show(id_product).getCount();
		int sumCount = count;
		List<OrderProduct> orderProduct = (List<OrderProduct>) httpSession.getAttribute("proOder");
		if(orderProduct != null) {
			for(OrderProduct value : orderProduct) {
				if(value.getId_product() == id_product) {
					sumCount += value.getCount();
				}
			}
		}
		if(sumCount > countProduct) {
			return String.valueOf(countProduct);
		}
		return "true";
	}
	
	@SuppressWarnings({ "unused", "unchecked" })
	private int checkProduct(int id_product, int id_color, int id_size, HttpSession httpSession) {
		list = (List<OrderProduct>) httpSession.getAttribute("proCart");
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getId_product() == id_product &&
				list.get(i).getId_color() == id_color &&
				list.get(i).getId_size() == id_size) {
				return i;
			}
		}
		return -1;
	}

}
