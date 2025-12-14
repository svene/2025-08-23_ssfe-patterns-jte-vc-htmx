package org.svenehrke.demo.web.p04uipatterns.p01parentchild;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;
import org.springframework.stereotype.Controller;

@ViewComponent
@Controller
public class Child {

	public static final String URL = "/ui/components/child";

	public record Ctx(Content slot1)  implements ViewContext {}

	// TODO: fragment retrieval support with URL
//	@GetMapping(URL)
//	public Ctx ctx(
//		@RequestParam(name = "greeting", required = false, defaultValue = "Hello from Child-Component") String greeting
//	) {
//		return new Ctx(greeting);
//	}


}
