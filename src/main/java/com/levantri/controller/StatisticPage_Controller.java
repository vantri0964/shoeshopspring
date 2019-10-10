package com.levantri.controller;

import java.util.Hashtable;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.levantri.dao.CategoryDao;
import com.levantri.dao.SizeDao;
import com.levantri.empty.Category;
import com.levantri.empty.Product;
import com.levantri.empty.User;
import com.levantri.service.CategoryService;
import com.levantri.service.GeneralService;
import com.levantri.service.ProductService;
import com.levantri.service.SizeService;

@Controller
@RequestMapping("/")
public class StatisticPage_Controller {
	@Autowired
	private GeneralService generalService;
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@GetMapping
	@Transactional
	public ModelAndView home(HttpSession httpSession, @ModelAttribute("flash") Hashtable<String, String> flashAttribute, ModelMap modelMap) {
		ModelAndView modelView = new ModelAndView();
		Hashtable<String, String> flash = new Hashtable<String, String>();
		flash = null;
		System.out.println("sessios is" + httpSession.getAttribute("user_id"));
		if(httpSession.getAttribute("user_id") != null) {
			int user_id = (Integer) httpSession.getAttribute("user_id");
			modelView.addObject("user", generalService.Info(user_id));
		}
		if(!flashAttribute.isEmpty()) {
			flash = flashAttribute;
		}
		
		modelMap.addAttribute("flash", flash);
		
		List<Product> products = productService.index(0, 9);
		modelView.addObject("products", products);
		for(Product pro : products) {
			System.out.println(pro.getName());
		}
		
		modelView.setViewName("Product_index");
		return modelView;
	}

}
