package org.svenehrke.demo.web.pages.custompagewithparam;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;

@ViewComponent
@Controller
public class CustomPageWithParamCode {
	public record Ctx() implements ViewContext { }
}
