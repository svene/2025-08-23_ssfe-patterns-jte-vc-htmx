package org.svenehrke.demo.web.s01plainjte;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

// docs:start class
@Controller
public class PlainJTEController {
// docs:end class

	public static final String S01D01_URL = "/s01d01";// docs: s01d01
	public static final String S01D02_URL = "/s01d02";// docs: page02
	public static final String S01D03_URL = "/s01d03";// docs: page03
	public static final String S01D04_URL = "/s01d04";// docs: page04
	public static final String S01D05_URL = "/s01d05";// docs: page05

	// docs:start s01d01
	@GetMapping(S01D01_URL)
	public String s01d01() {
		return "jte/plainjte/s01d01";
	}
	// docs:end s01d01

	// docs:start s01d02
	@GetMapping(S01D02_URL)
	public String s01d02() {
		return "jte/plainjte/s01d02";
	}
	// docs:end s01d02

	// docs:start s01d03
	@GetMapping(S01D03_URL)
	public String s01d03(Model model) {
		model.addAttribute("greetee", "You");
		return "jte/plainjte/s01d03";
	}
	// docs:end s01d03

	// docs:start s01d04
	@GetMapping(S01D04_URL)
	public String p4s01d04() {
		return "jte/plainjte/s01d04";
	}
	// docs:end s01d04

	// docs:start s01d05
	@GetMapping(S01D05_URL)
	public String s01d05() {
		return "jte/plainjte/s01d05";
	}
	// docs:end s01d05

}// docs: class
