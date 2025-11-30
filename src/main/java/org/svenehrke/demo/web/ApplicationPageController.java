package org.svenehrke.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ApplicationPageController {

	public static final String APP_PAGE_URL = "/apppage";
	public static final String APP_PAGE_INCL_URL = "/apppageincl";
	public static final String APP_PAGE_INCL_PARAMS_URL = "/apppageinclparams";

	@GetMapping(APP_PAGE_URL)
	public String app() {
		return "jte/app";
	}

	@GetMapping(APP_PAGE_INCL_URL)
	public String appPageIncl() {
		return "jte/apppageincl";
	}

	@GetMapping(APP_PAGE_INCL_PARAMS_URL)
	public String app(Model model) {
		var firstName = "Bart";
		model.addAttribute("greetee", firstName);
		return "jte/apppageinclparams";
	}

}
