package org.svenehrke.demo.web.pages;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@ViewComponent
@Controller
public class ComponentForwarderPageComponent {

	public static final String URL = "/ui/pages/componentforwarder";

	public record Ctx(String greeting) implements ViewContext {
	}

	@GetMapping(URL)
	public ViewContext ctx( // Note: needs to return general 'ViewContext' type
		@RequestParam(name = "greeting", required = false, defaultValue = "Hello from Component-Forwarder-Page") String greeting
	) {
		if (greeting.contains("forward")) {
			// forward:
			return new InjectionPageComponent.Ctx("via component forwarder");
		} else {
			return new Ctx(greeting);
		}
	}


}
