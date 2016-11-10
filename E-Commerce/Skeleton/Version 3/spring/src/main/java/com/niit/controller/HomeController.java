package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = "home")
	public String homePage() {
		System.out.println("home page !");
		return "home";
	}

	@RequestMapping(value = "/about")
	public String aboutUs() {
		return "about";
	}
}
