package org.svenehrke.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class HelloWorldController {

	public static final String URL = "/helloworld";

	@GetMapping(URL)
	public String helloworld() {
		return "jte/helloworld";
	}
}
