package com.levantri.interceptor;

import java.nio.channels.FileChannel.MapMode;
import java.util.Hashtable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public class LonggerInterceptor extends HandlerInterceptorAdapter {

	public LonggerInterceptor() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public boolean preHandle(
	  HttpServletRequest request,
	  HttpServletResponse response, 
	  Object handler) throws Exception {
//		Hashtable<String , String> flash = new Hashtable<String, String>();
//	    request.setAttribute("flash", flash);
		System.out.println("Co qua preHandle");
	    return true;
	}
}
