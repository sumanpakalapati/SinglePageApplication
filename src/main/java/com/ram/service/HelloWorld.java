package com.ram.service;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/hello")
public class HelloWorld {

	@RequestMapping(method = RequestMethod.GET)
	public @ResponseBody Response getString() {
		return new Response();
	}


	@RequestMapping(method = RequestMethod.POST)
	public @ResponseBody Response sendEmail(
			@RequestParam(value="email") String email,
			@RequestParam(required=false ,value="postalCode") String postalCode ) {
		System.out.println("Email Address is ->" + email);
		System.out.println("postalCode Address is ->" + postalCode);
		return new Response();
	}

}
