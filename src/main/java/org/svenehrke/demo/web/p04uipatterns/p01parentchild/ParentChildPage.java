package org.svenehrke.demo.web.p04uipatterns.p01parentchild;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@ViewComponent
@Controller
public class ParentChildPage {
	public static final String URL = "/ui/pages/parentchild";
	public record Ctx() implements ViewContext { }

	@GetMapping(URL)
	public Ctx ctx() {
		return new Ctx();
	}
}
