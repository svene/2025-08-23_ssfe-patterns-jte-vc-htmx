package org.svenehrke.demo.web.p04uipatterns.p02forwarder;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class Second {
	public record Ctx(String greeting) implements ViewContext {}
}
