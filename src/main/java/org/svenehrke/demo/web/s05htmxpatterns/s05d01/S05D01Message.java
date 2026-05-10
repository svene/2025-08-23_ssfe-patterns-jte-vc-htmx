package org.svenehrke.demo.web.s05htmxpatterns.s05d01;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

// docs:start component
@ViewComponent
@Controller
public class S05D01Message {

	public static final String URL = "/ui/components/p05/p01/message";
	public record Ctx(String message) implements ViewContext { }

	/** Fragment retrieval support with URL for HTML partial replacements (htmx swaps) */
	@GetMapping(URL)
	public Ctx ctx(
		@RequestParam(name = "message", required = false, defaultValue = "Hello from S05D01Message component")
		String message
	) {
		return new Ctx(message);
	}
}
// docs:end component
