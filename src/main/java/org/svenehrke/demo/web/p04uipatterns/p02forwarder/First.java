package org.svenehrke.demo.web.p04uipatterns.p02forwarder;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;

@ViewComponent
public class First {
	public record Ctx(String greeting) implements ViewContext {}
	/** Note:
	 * - needs to return general 'ViewContext' type so that either First.Ctx or Second.Ctx can be returned
	 * - this is an example where it makes sense that the JTE calls a ctx() function rather than new First.Ctx()
	 * - alternative: JTE implements the conditional logic using @if
	 **/
	public ViewContext ctx(String greeting) {
		if (greeting.contains("forward")) {
			// forward:
			return new Second.Ctx(
				"(First: '%s' -> Second)".formatted(greeting)
			);
		} else {
			return new Ctx(greeting);
		}
	}
}
