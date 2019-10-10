package com.levantri.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("errors/")
public class Error_Controller {

	public Error_Controller() {
		// TODO Auto-generated constructor stub
	}
	
	@GetMapping
	public ModelAndView renderErrors(HttpServletRequest httpRequest) {
		ModelAndView model = new ModelAndView();
		int httpErrorCode = getErrorCode(httpRequest);
		 switch (httpErrorCode) {
         case 404: {
            model.setViewName("errors/error404");
             break;
         }
//         case 401: {
//         
//             break;
//         }
//         case 404: {
//        
//             break;
//         }
//         case 500: {
//          
//             break;
//         }
     }
		return model;
	}
	
   private int getErrorCode(HttpServletRequest httpRequest) {
        return (Integer) httpRequest
          .getAttribute("javax.servlet.error.status_code");
    }

}
