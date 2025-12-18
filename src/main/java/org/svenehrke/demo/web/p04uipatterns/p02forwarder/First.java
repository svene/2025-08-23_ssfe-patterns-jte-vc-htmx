package org.svenehrke.demo.web.p04uipatterns.p02forwarder;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;

@ViewComponent
public class First {

	public record Ctx(String greeting) implements ViewContext {
	}

	// Note: needs to return general 'ViewContext' type:
	public ViewContext ctx(String greeting) {
		if (greeting.contains("forward")) {
			// forward:
			return new Second().ctx(
				"(First: '%s' -> Second)".formatted(greeting)
			);
		} else {
			return new Ctx(greeting);
		}
	}


}
