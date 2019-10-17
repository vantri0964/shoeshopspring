package com.levantri.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.levantri.empty.Bank;
import com.levantri.empty.Order;
import com.levantri.empty.OrderProduct;
import com.levantri.empty.Product;
import com.levantri.empty.User;
import com.levantri.service.BankService;
import com.levantri.service.OrderService;
import com.levantri.service.ProductService;


@Controller
@RequestMapping("cart/")
public class Cart_Controller {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private BankService bankService;
	
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
		List<Product> listProduct = new ArrayList<Product>();
		Order order = new Order();
		float total = 0;
		if(httpSession.getAttribute("user_id") == null) {
			model.setViewName("redirect:/");
		}else {
			ArrayList<Integer> ids = new ArrayList<Integer>();
			List<OrderProduct> orderProduct = (List<OrderProduct>) httpSession.getAttribute("proCart");
			if(orderProduct != null){
				// Add id select list
				for(OrderProduct value : orderProduct) {
					ids.add(value.getId_product());
					total += (value.getPrice() * value.getCount());
				}
				listProduct = productService.listProduct(ids);
				// Update data orderProduct
				for(int i=0; i<orderProduct.size(); i++) {
					for(int j=0; j<listProduct.size(); j++) {
						if(orderProduct.get(i).getId_product() == listProduct.get(j).getId()) {
							orderProduct.get(i).setPrice(listProduct.get(j).getPrice());
							orderProduct.get(i).setName_product(listProduct.get(j).getName());
							orderProduct.get(i).setImage(listProduct.get(j).getImage());
						}
					}
					
				}
			}
			//List bank
			List<Bank> listBank = bankService.indexBank();
			model.addObject("listBank", listBank);
			model.addObject("listCart", orderProduct);
			model.addObject("total", total);
			model.setViewName("cart_index");
		}
		model.addObject("order", order);
		return model;
	}
	
	@PostMapping("index/")
	public ModelAndView addOrder(HttpSession httpSession,  @ModelAttribute("order") @Valid Order order,
				BindingResult result) {
		ModelAndView model = new ModelAndView();
		ArrayList<OrderProduct> orderProduct =  (ArrayList<OrderProduct>) httpSession.getAttribute("proCart");
		if(result.hasErrors()) {
			//List bank
			List<Bank> listBank = bankService.indexBank();
			model.addObject("listBank", listBank);
			model.setViewName("cart_index");
		}else {
			order.setId_user((Integer)httpSession.getAttribute("user_id"));
			try {
				int id_order = orderService.createOrder(order);
				for(OrderProduct value: orderProduct) {
					value.setId_order(id_order);
					orderService.saveOrderProduct(value);
				}
				httpSession.removeAttribute("proCart");
				model.setViewName("redirect:/");
			} catch (Exception e) {
				System.out.println("Loi " + e);
				model.setViewName("cart_index");
			}
		}
		return model;
	}
	
	
	@GetMapping("update/")
	@ResponseBody
	public String update(@RequestParam int id_product, @RequestParam int id_color,
			@RequestParam int id_size, @RequestParam int count, HttpSession httpSession) {
			System.out.println("Co qua update");
			list = (List<OrderProduct>) httpSession.getAttribute("proCart");
			int i = checkProduct(id_product, id_color, id_size, httpSession);
			if(i != -1) {	
				int countProduct = productService.show(id_product).getCount();
				int sumCount = count;
				int old_count = 0;
				if(list != null) {
					for(OrderProduct value : list) {
						if(value.getId_product() == id_product) {
							sumCount += value.getCount();
							old_count += value.getCount();
						}
					}
					sumCount -= list.get(i).getCount();
				}
				if(sumCount > countProduct) {
					return String.valueOf(countProduct - old_count);
				}else {
					list.get(i).setCount(count);
				}
			}	
		return "true";
	}
	
	@GetMapping("delete/")
	@ResponseBody
	public String delete(@RequestParam int id_product, @RequestParam int id_color,
			@RequestParam int id_size, HttpSession httpSession) {
			System.out.println("Co qua update");
			list = (List<OrderProduct>) httpSession.getAttribute("proCart");
			int i = checkProduct(id_product, id_color, id_size, httpSession);
			if(i != -1) {
				list.remove(i);
				return String.valueOf(list.size());
			}
		return "false";
	}
	
	@GetMapping("checkcount/")
	@ResponseBody
	public String checkCount(HttpSession httpSession, @RequestParam int id_product, @RequestParam int count) {
		int countProduct = productService.show(id_product).getCount();
		int sumCount = count;
		List<OrderProduct> orderProduct = (List<OrderProduct>) httpSession.getAttribute("proCart");
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
	
	@GetMapping("totalprice/")
	@ResponseBody
	public String total_price(HttpSession httpSession) {
		List<OrderProduct> orderProduct = (List<OrderProduct>) httpSession.getAttribute("proCart");
		if(orderProduct != null) {	
			float total = 0;
			for(OrderProduct value : orderProduct) {
				total += (value.getPrice() * value.getCount());
			}
			return String.valueOf(total);
		}
		return "false";
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
	
	 public static <T> Set<T> convertArrayToSet(ArrayList<OrderProduct> orderProduct) 
	    { 
	  
	        // Create an empty Set 
	        Set<T> set = new HashSet<T>(); 
	  
	        // Iterate through the array 
	        for (OrderProduct t : orderProduct) { 
	            // Add each element into the set 
	            set.add((T) t); 
	        } 
	  
	        // Return the converted Set 
	        return set; 
	    } 

}
