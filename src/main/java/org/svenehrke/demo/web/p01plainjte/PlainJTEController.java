package org.svenehrke.demo.web.p01plainjte;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PlainJTEController {

	public static final String PAGE_01_URL = "/page01";
	public static final String PAGE_02_WITH_COMPONENT_URL = "/page02withcomponent";
	public static final String PAGE_03_INCL_PARAMS_URL = "/page03inclparams";
	public static final String PAGE_04_PASS_CONTENT_URL = "/page04passcontent";
	public static final String PAGE_05_NESTED_URL = "/page05nested";

	@GetMapping(PAGE_01_URL)
	public String app() {
		return "jte/plainjte/page01";
	}

	@GetMapping(PAGE_02_WITH_COMPONENT_URL)
	public String appPageIncl() {
		return "jte/plainjte/page02withcomponent";
	}

	@GetMapping(PAGE_03_INCL_PARAMS_URL)
	public String appPageInclParams(Model model) {
		model.addAttribute("greetee", "Bart");
		return "jte/plainjte/page03inclparams";
	}

	@GetMapping(PAGE_04_PASS_CONTENT_URL)
	public String appPagePassContent() {
		return "jte/plainjte/page04passcontent";
	}

	@GetMapping(PAGE_05_NESTED_URL)
	public String appPageNested() {
		return "jte/plainjte/page05nested";
	}

}
