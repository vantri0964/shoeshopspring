package com.levantri.controller;

import java.util.Hashtable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.levantri.empty.Color;
import com.levantri.empty.Product;
import com.levantri.empty.ProductDetail;
import com.levantri.empty.Size;
import com.levantri.service.ColorService;
import com.levantri.service.ProductService;
import com.levantri.service.SizeService;

@Controller
@RequestMapping("product")
public class Product_Controller {
	@Autowired
	ProductService productService;
	
	@Autowired
	private SizeService sizeService;
	
	@Autowired
	private ColorService colorService;
	public Product_Controller() {
		// TODO Auto-generated constructor stub
	}
	
	@GetMapping("/{id}")
	public ModelAndView showProduct(@PathVariable int id, RedirectAttributes redirectAttribute) {
		ModelAndView modelAndView = new ModelAndView();
		Hashtable<String , String> flash = new Hashtable<String, String>();
		Product product = productService.show(id);
		List<Size> sizes  = sizeService.indexSize(id);
		List<Color> colors  = colorService.indexColor(id);
		for(Color color : colors) {
			System.out.println(color.getId());
		}
		if(product != null) {
			modelAndView.addObject("product", product);
			modelAndView.addObject("sizes", sizes);
			modelAndView.addObject("colors", colors);
			modelAndView.setViewName("show_product");
		}else {
			flash.put("info", "productDetail.notFound");
			redirectAttribute.addFlashAttribute("flash", flash);
			modelAndView.setViewName("redirect:/");
		}
		return modelAndView;
	}
	
	@GetMapping("/ajax/color")
	@ResponseBody
	public String color(HttpServletRequest request ) {
		int id_size = Integer.parseInt(request.getParameter("id_size"));
		int id_product = Integer.parseInt(request.getParameter("id_product"));
		List<ProductDetail> pro_details =  sizeService.indexSize(id_size, id_product);
		String html = "";
		System.out.println("test ajax color " + pro_details + "--" +id_size + "--"+ id_product);
		for(ProductDetail proDetail : pro_details) {
			int id = proDetail.getColor().getId();
			System.out.println(proDetail.getColor().getId());
			html += "<label><input data-color=";
			html += "'" +  id + "'";
			html += "type='radio' name='color' value=";
			html += "'" +  id + "'>";
			html += proDetail.getColor().getColor();
			html += "</label>";
		}
		return html;
	}
}
