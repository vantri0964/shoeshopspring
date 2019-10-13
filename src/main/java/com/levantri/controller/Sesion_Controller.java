package com.levantri.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.levantri.connect.ConnectDatabase;
import com.levantri.empty.User;
import com.levantri.service.SessionService;

@Controller
//@SessionAttributes("user_id")
@RequestMapping("session/")
public class Sesion_Controller {
	@Autowired
	SessionService sessionService;
//	@Autowired
//	SessionFactory sessionFactory;
//	
	@GetMapping
	@Transactional
	public ModelAndView New(Model model1,  HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		if(httpSession.getAttribute("user_id") == null){
			model.setViewName("Sesion_new");
			model.addObject("user", new User());
			return model;
		}else {
			return new ModelAndView("redirect:/"); 
		}

//		model1.addAttribute("user", new User());
		
//		ApplicationContext context = new ClassPathXmlApplicationContext("Ioc.xml");
//		
//		ConnectDatabase connect = (ConnectDatabase) context.getBean("loginConnect");
//		connect.getJdbcTemplate();
//		Session session = sessionFactory.getCurrentSession();
//		String sql = "from users";
//		List<User> listMember = session.createQuery(sql).getResultList();
//		for(User value: listMember) {
//			System.out.println("Name " + value.getUsername());
//		}
	}
	
	@PostMapping
	@Transactional
	public ModelAndView Create(@ModelAttribute("user") User user, ModelMap modelMap, RedirectAttributes redirecAttribute, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		Hashtable<String , String> flash = new Hashtable<String, String>();
		User userResult = sessionService.login(user);
		if(sessionService.login(user) != null) {
			flash.put("success", "Login successfully");
			redirecAttribute.addFlashAttribute("flash", flash);
			httpSession.setAttribute("user_id", userResult.getId());
			return new ModelAndView("redirect:/");
		}else {
			flash.put("danger", "Login Fail");	
			modelMap.addAttribute("flash", flash);
			return new ModelAndView("Sesion_new");
		}	
	}
	
	@GetMapping("logout/")
	@Transactional
	public String logout(HttpSession httpSession) {
		httpSession.removeAttribute("user_id");
		httpSession.removeAttribute("proCart");
	
//		if(httpSession.getAttribute("user_id") !=null) {
//			httpSession.setAttribute("user_id", null);
//		}
//		if(httpSession.getAttribute("proCart") !=null) {
//			httpSession.setAttribute("proCart", null);
//		}
//		httpSession.setAttribute("user_id", null);
//		httpSession.setAttribute("proCart", null);
		return "redirect:/";
	}
}
