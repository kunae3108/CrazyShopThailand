package com.nattav.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	
	@RequestMapping(value="/")
	public ModelAndView index() throws Exception{
		
		ModelAndView mv = new ModelAndView("index");
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		return mv;
	}
	
}
