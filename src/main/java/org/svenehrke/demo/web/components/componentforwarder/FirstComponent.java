package org.svenehrke.demo.web.components.componentforwarder;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;

@ViewComponent
@Controller
public class FirstComponent {

	public record Ctx(String greeting) implements ViewContext {
	}

	public ViewContext ctx( // Note: needs to return general 'ViewContext' type
		@RequestParam(name = "greeting", required = false, defaultValue = "Hello from First-Component") String greeting
	) {
		if (greeting.contains("forward")) {
			// forward:
			return new SecondComponent().ctx(
				"(FirstComponent: '%s' -> SecondComponent)".formatted(greeting)
			);
		} else {
			return new Ctx(greeting);
		}
	}


}
