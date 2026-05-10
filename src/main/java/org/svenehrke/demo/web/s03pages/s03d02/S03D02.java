package org.svenehrke.demo.web.s03pages.s03d02;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

// docs:start page
@ViewComponent
@Controller
public class S03D02 {
	public static final String URL = "/ui/s03pages/s03d02";

	public record Ctx(String greeting) implements ViewContext {}

	@GetMapping(URL)
	public Ctx ctx(
		// TODO: remove this param from other demos:
		@RequestParam(name = "greeting", required = false, defaultValue = "Hello") String greeting
	) {
		return new Ctx(greeting);
	}
}
// docs:end page
