package com.demo.apps.contrtoller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/")
public class HomeController {
	@RequestMapping("/")
	public ModelAndView welcome() {
		
		return new ModelAndView("index");
	}
}
