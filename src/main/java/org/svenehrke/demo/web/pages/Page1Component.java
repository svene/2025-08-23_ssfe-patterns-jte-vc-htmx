package org.svenehrke.demo.web.pages;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@ViewComponent
@Controller
public class Page1Component {

	public static final String URL = "/ui/pages/page1";

	public record Ctx(String greeting) implements ViewContext {
	}

	@GetMapping(URL)
	public Ctx ctx(
		@RequestParam(name = "greeting", required = false, defaultValue = "Hello World") String greeting
	) {
		return new Ctx(greeting);
	}


}
