package org.svenehrke.demo.web.p04uipatterns.p02forwarder;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;

@ViewComponent
@Controller
public class ForwarderCode {
	public record Ctx() implements ViewContext { }
}
