package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping(value = "home")
	public String homePage() {
		return "home";
	}

	@RequestMapping(value = "/about")
	public String aboutUs() {
		return "about";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error, Model model) {
		if (error != null)
			model.addAttribute("error", "Invalid username and password");
		return "login";
	}

}
