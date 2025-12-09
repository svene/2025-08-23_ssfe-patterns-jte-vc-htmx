package org.svenehrke.demo.web.pages.contentpage;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@ViewComponent
@Controller
public class ContentPage {
	public static final String URL = "/ui/pages/contentpage";

	public record Ctx() implements ViewContext {}

	@GetMapping(URL)
	public Ctx ctx() {
		return new Ctx();
	}
}
