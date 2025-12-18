package org.svenehrke.demo.web.p05htmxpatterns.p01urlcomponents;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@ViewComponent
@Controller
public class P05P01Message {

	public static final String URL = "/ui/components/p05/p01/greeting";

	public record Ctx(String message) implements ViewContext {
	}

	/** Fragment retrieval support with URL for HTML partial replacements (htmx swaps) */
	@GetMapping(URL)
	public Ctx ctx(
		@RequestParam(name = "message", required = false, defaultValue = "Hello from P05P01Message component") String message
	) {
		return new Ctx(message);
	}


}
