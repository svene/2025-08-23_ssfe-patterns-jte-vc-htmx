package org.svenehrke.demo.web.s04uipatterns.s04d01;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

// docs:start component
@ViewComponent
public class Parent {
	public record Ctx(String greeting) implements ViewContext {}
}
// docs:end component
