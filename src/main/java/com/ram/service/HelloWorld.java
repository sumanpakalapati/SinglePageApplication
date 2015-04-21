package com.ram.service;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/hello")
public class HelloWorld {

	@RequestMapping(method = RequestMethod.GET)
	public @ResponseBody Response getString() {
		return new Response();
	}

}
