package org.svenehrke.demo.web.s02simplevcdemos.s02d05;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// docs:start page
@ViewComponent
@Controller
public class S02D05 {
	public static final String URL = "/ui/demos/s02simplevcdemos/s02d05";
	public record Ctx() implements ViewContext { }

	@GetMapping(URL)
	public Ctx ctx() {
		return new Ctx();
	}
}
// docs:end page
