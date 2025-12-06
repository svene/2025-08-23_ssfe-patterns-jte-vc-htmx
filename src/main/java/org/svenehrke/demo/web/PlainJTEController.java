package org.svenehrke.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PlainJTEController {

	public static final String APP_PAGE_URL = "/apppage";
	public static final String APP_PAGE_INCL_URL = "/apppageincl";
	public static final String APP_PAGE_INCL_PARAMS_URL = "/apppageinclparams";
	public static final String APP_PAGE_PASS_CONTENT_URL = "/apppagepasscontent";

	@GetMapping(APP_PAGE_URL)
	public String app() {
		return "jte/plainjte/app";
	}

	@GetMapping(APP_PAGE_INCL_URL)
	public String appPageIncl() {
		return "jte/plainjte/apppageincl";
	}

	@GetMapping(APP_PAGE_INCL_PARAMS_URL)
	public String appPageInclParams(Model model) {
		var firstName = "Bart";
		model.addAttribute("greetee", firstName);
		return "jte/plainjte/apppageinclparams";
	}

	@GetMapping(APP_PAGE_PASS_CONTENT_URL)
	public String appPagePassContent() {
		return "jte/plainjte/apppagepasscontent";
	}

}
