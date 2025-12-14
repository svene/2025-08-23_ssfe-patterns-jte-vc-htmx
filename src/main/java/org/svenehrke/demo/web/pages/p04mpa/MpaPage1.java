package org.svenehrke.demo.web.pages.p04mpa;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@ViewComponent
@Controller
public class MpaPage1 {

	public static final String URL = "/ui/pages/mpa";

	public record Ctx() implements ViewContext {
	}

	@GetMapping(URL)
	public Ctx ctx() {
		return new Ctx();
	}


}
