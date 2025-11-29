package org.svenehrke.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.svenehrke.demo.web.pages.MainPageComponent;

@Controller
public class MainController {

	@GetMapping("/")
	public String redirectRoot() {
		return "redirect:" +
			MainPageComponent.URL;
	}

}
