package org.svenehrke.demo.web.simplevcdemos.applicationpage;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@ViewComponent
@Controller
public class ApplicationPageComponent {

	public static final String URL = "/ui/demos/simplevc/applicationpage";

	public record Ctx() implements ViewContext {
	}

	@GetMapping(URL)
	public Ctx ctx(
	) {
		return new Ctx();
	}
}
