package org.svenehrke.demo.web.p01plainjte;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PlainJTEController {

	public static final String PAGE_01_URL = "/page01";
	public static final String PAGE_02_WITH_COMPONENT_URL = "/page02withcomponent";
	public static final String PAGE_03_WITH_PARAMS_COMPONENT_URL = "/page03withparamscomponent";
	public static final String PAGE_04_WITH_CONTENT_PARAMS_COMPONENT_URL = "/page04withcontentparamscomponent";
	public static final String PAGE_05_WITH_NESTED_COMPONENTS_URL = "/page05withnestedcomponents";

	@GetMapping(PAGE_01_URL)
	public String app() {
		return "jte/plainjte/page01";
	}

	@GetMapping(PAGE_02_WITH_COMPONENT_URL)
	public String appPageIncl() {
		return "jte/plainjte/page02withcomponent";
	}

	@GetMapping(PAGE_03_WITH_PARAMS_COMPONENT_URL)
	public String appPageInclParams(Model model) {
		model.addAttribute("greetee", "You");
		return "jte/plainjte/page03withparamscomponent";
	}

	@GetMapping(PAGE_04_WITH_CONTENT_PARAMS_COMPONENT_URL)
	public String appPagePassContent() {
		return "jte/plainjte/page04withcontentparamscomponent";
	}

	@GetMapping(PAGE_05_WITH_NESTED_COMPONENTS_URL)
	public String appPageNested() {
		return "jte/plainjte/page05withnestedcomponents";
	}

}
