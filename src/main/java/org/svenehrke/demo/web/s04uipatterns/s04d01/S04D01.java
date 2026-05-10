package org.svenehrke.demo.web.s04uipatterns.s04d01;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// docs:start page
@ViewComponent
@Controller
public class S04D01 {
	public static final String URL = "/ui/s04uipatterns/s04d01";
	public record Ctx() implements ViewContext { }

	@GetMapping(URL)
	public Ctx ctx() {
		return new Ctx();
	}
}
// docs:end page
