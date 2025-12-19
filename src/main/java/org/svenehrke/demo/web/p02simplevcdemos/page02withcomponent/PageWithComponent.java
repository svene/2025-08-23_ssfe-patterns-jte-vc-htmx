package org.svenehrke.demo.web.p02simplevcdemos.page02withcomponent;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@ViewComponent
@Controller
public class PageWithComponent {
	public static final String URL = "/ui/demos/simplevc/pagewithcomponent";
	public record Ctx() implements ViewContext {} // <=== include the View Component (variant 1)

	@GetMapping(URL)
	public Ctx ctx() { // <=== include the View Component (variant 2)
		return new Ctx();
	}
}
