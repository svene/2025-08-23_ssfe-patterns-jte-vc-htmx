package org.svenehrke.demo.web.pages.pocs.wcswap.wcwrapper1;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@ViewComponent
@Controller
public class WCWrapper1Component {

	public static final String URL = "/ui/pages/poc/wcswap/wcwrapper1";

	public record Ctx() implements ViewContext {
	}

	@GetMapping(URL)
	public Ctx ctx(
	) {
		return new Ctx();
	}


}
