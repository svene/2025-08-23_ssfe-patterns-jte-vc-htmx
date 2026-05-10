package org.svenehrke.demo.web.s03pages.s03d04;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// docs:start page
@ViewComponent
@Controller
public class S03D04P1 {
	public static final String URL = "/ui/s03pages/s03d04p1";
	public record Ctx() implements ViewContext {}

	@GetMapping(URL)
	public Ctx ctx() {
		return new Ctx();
	}
}
// docs:end page
