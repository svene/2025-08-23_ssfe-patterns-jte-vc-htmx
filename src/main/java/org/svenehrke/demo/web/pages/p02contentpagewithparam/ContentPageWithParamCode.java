package org.svenehrke.demo.web.pages.p02contentpagewithparam;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;

@ViewComponent
@Controller
public class ContentPageWithParamCode {
	public record Ctx() implements ViewContext { }
}
