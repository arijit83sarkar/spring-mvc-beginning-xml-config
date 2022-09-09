package com.raven.springmvcwebapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

//	@GetMapping("/","/home")
	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public String showHome() {
		return "index";
	}
}
