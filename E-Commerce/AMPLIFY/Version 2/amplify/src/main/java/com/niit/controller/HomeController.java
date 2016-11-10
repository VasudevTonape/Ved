package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping(value = "/home")
	public String homePage() {
		return "home";
	}

	@RequestMapping(value = "/about")
	public String aboutUs() {
		return "about";
	}

	@RequestMapping(value = "/contact")
	public String contact() {
		return "contact";
	}

	@RequestMapping(value = "/terms")
	public String termsofservice() {
		return "terms";
	}

	@RequestMapping(value = "/privacypolicy")
	public String privacypolicy() {
		return "privacypolicy";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null)
			model.addAttribute("error", "Enter a vaild username and password");

		if (logout != null)
			model.addAttribute("logout", "Logged out successfully");
		return "login";
	}
}
