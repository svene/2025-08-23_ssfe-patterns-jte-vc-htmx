package org.svenehrke.demo.web.p04uipatterns.p01parentchild;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class Parent {
	public record Ctx(String greeting) implements ViewContext {}
}
