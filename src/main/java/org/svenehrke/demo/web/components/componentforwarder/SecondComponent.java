package org.svenehrke.demo.web.components.componentforwarder;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;

@ViewComponent
@Controller
public class SecondComponent {

	public record Ctx(String greeting) implements ViewContext {
	}

	public Ctx ctx(
		@RequestParam(name = "greeting", required = false, defaultValue = "Hello from Second-Component") String greeting
	) {
		return new Ctx(greeting);
	}


}
