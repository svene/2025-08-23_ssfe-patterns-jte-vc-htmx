package org.svenehrke.demo.web.components;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@ViewComponent
@Controller
public class ChildComponent {

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
