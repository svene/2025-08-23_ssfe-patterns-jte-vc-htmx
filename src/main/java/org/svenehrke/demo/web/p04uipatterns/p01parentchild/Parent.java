package org.svenehrke.demo.web.p04uipatterns.p01parentchild;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;

@ViewComponent
public class Parent {
	public record Ctx(String greeting) implements ViewContext {
		// TODO: find good use-case for the following or remove:
		public Child.Ctx childCtx(Content slot) {
			return new Child.Ctx(slot);
		}
	}
}
