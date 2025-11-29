package org.svenehrke.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.svenehrke.demo.web.pages.MainPageComponent;

@Controller
public class PlainTemplateController {

	public static final String URL = "/plaintemplate/{tpl}";

	@GetMapping(URL)
	public String plaintemplate(@PathVariable String tpl) {
		return "jte/" + tpl;
	}
}
