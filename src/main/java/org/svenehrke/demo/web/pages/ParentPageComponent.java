package org.svenehrke.demo.web.pages;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.svenehrke.demo.web.components.ChildComponent;

@ViewComponent
@Controller
public class ParentPageComponent {

	public static final String URL = "/ui/pages/parent";

	public record Ctx(String greeting) implements ViewContext {
		public ChildComponent.Ctx childCtx(Content slot) {
			return new ChildComponent.Ctx(slot);
		}
	}


	@GetMapping(URL)
	public Ctx ctx(
		@RequestParam(name = "greeting", required = false, defaultValue = "Hello from Parent-Page") String greeting
	) {
		return new Ctx(greeting);
	}


}
