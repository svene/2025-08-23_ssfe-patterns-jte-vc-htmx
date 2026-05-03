package org.svenehrke.demo.web.p01plainjte;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

// docs:start class
@Controller
public class PlainJTEController {
// docs:end class

	public static final String PAGE_01_URL = "/page01";// docs: page01
	public static final String PAGE_02_WITH_COMPONENT_URL = "/page02withcomponent";// docs: page02
	public static final String PAGE_03_WITH_PARAMS_COMPONENT_URL = "/page03withparamscomponent";// docs: page03
	public static final String PAGE_04_WITH_CONTENT_PARAMS_COMPONENT_URL = "/page04withcontentparamscomponent";// docs: page04
	public static final String PAGE_05_WITH_NESTED_COMPONENTS_URL = "/page05withnestedcomponents";// docs: page05

	// docs:start page01
	@GetMapping(PAGE_01_URL)
	public String p1() {
		return "jte/plainjte/page01";
	}
	// docs:end page01

	// docs:start page02
	@GetMapping(PAGE_02_WITH_COMPONENT_URL)
	public String p2() {
		return "jte/plainjte/page02withcomponent";
	}
	// docs:end page02

	// docs:start page03
	@GetMapping(PAGE_03_WITH_PARAMS_COMPONENT_URL)
	public String p3(Model model) {
		model.addAttribute("greetee", "You");
		return "jte/plainjte/page03withparamscomponent";
	}
	// docs:end page03

	// docs:start page04
	@GetMapping(PAGE_04_WITH_CONTENT_PARAMS_COMPONENT_URL)
	public String p4() {
		return "jte/plainjte/page04withcontentparamscomponent";
	}
	// docs:end page04

	// docs:start page05
	@GetMapping(PAGE_05_WITH_NESTED_COMPONENTS_URL)
	public String p5() {
		return "jte/plainjte/page05withnestedcomponents";
	}
	// docs:end page04

}// docs: class
