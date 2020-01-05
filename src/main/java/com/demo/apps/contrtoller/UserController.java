package com.demo.apps.contrtoller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/user")
public class UserController {
	@RequestMapping("/manage")
	public ModelAndView manage() {
		System.err.println("hello");
		return new ModelAndView("user/create");
	}
}
