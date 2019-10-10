package com.levantri.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.levantri.empty.Category;
import com.levantri.service.CategoryService;

@Controller
@RequestMapping("category/")
public class Category_Controller {
	
	@Autowired
	private CategoryService categoryService;
	public Category_Controller() {
		// TODO Auto-generated constructor stub
	}
	@GetMapping
	@Transactional
	@ResponseBody
	public String loadCategory() {
		String html = "";
		List<Category> categories =  categoryService.indexCategory();
		for(Category values : categories) {
			html += loadChilrend(values);
		}
		return html;
	}
	
	private String loadChilrend(Category category) {
		String html = "";
		if(!categoryService.chilrentCategory(category.getId()).isEmpty()) {
			html += "<li> <a><i class=\"fa fa-angle-right\"></i>  " + category.getName() + "</a>";
			html += "<ul>";
			List<Category> chils = categoryService.chilrentCategory(category.getId());
			for(Category values : chils) {
				html += loadChilrend(values);
			}
			html += "</ul>";
			html += "</li>";
		}else {
			html += "<li><a>" + category.getName() + "</a></li>";
		}
		
		return html;
	}

}
