package org.svenehrke.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class HelloWorldController {

	@GetMapping("/helloworld")
	public String helloworld() {
		return "jte/helloworld";
	}
}
