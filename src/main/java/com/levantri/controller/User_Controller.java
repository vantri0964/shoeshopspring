package com.levantri.controller;

import java.util.Hashtable;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.levantri.empty.User;
import com.levantri.service.UserService;

@Controller
@RequestMapping("user/")
public class User_Controller {
	
	@Autowired
	private UserService userService;
	
	@PostMapping
	public ModelAndView create(@ModelAttribute("user") @Valid User user, BindingResult result, Errors errors, RedirectAttributes redirecAttribute, ModelMap modelMap) {
		ModelAndView modelview = new ModelAndView();
		Hashtable<String , String> flash = new Hashtable<String, String>();
		System.out.println("pass"+user.getPassword() + "-- confirm" + user.getPasswordconfirm());
		if(!user.getPassword().equals(user.getPasswordconfirm())) {
			errors.rejectValue("passwordconfirm", "register.errors");
		}
		if(userService.checkEmail(user.getUsername())) {
			errors.rejectValue("username", "email.errorsSame");
		}
		if(result.hasErrors()) {
			modelview.setViewName("Sesion_new");
		}else {
			if(userService.createUser(user)) {
				flash.put("info", "Đăng ký thành công!");
				redirecAttribute.addFlashAttribute("flash", flash);
				modelview.setViewName("redirect:/");
			}else {
				flash.put("flash", "Đăng ký thất bại!");
				modelMap.addAttribute("flash", flash);
				modelview.setViewName("Sesion_new");
			}	
		}
		return modelview;
	}

}
