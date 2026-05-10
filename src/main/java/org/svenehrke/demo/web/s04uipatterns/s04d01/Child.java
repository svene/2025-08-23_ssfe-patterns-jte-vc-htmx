package org.svenehrke.demo.web.s04uipatterns.s04d01;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;

// docs:start component
@ViewComponent
public class Child {
	public record Ctx(Content slot1) implements ViewContext {}
}
// docs:end component
