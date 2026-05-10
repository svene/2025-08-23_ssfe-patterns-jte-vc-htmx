package org.svenehrke.demo.web.s05htmxpatterns.s05d01;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// docs:start page
@ViewComponent
@Controller
public class S05D01 {
	public static final String URL = "/ui/s05htmxpatterns/s05d01";

	public record Ctx() implements ViewContext {}

	@GetMapping(URL)
	public Ctx ctx() {
		return new Ctx();
	}
}
// docs:end page
