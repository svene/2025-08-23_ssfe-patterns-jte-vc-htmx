package org.svenehrke.demo.web.p04uipatterns.p01parentchild;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;
import org.springframework.stereotype.Controller;

@ViewComponent
public class Parent {
	public record Ctx(String greeting) implements ViewContext {
		// TODO: find good use-case for the following or remove  (for html-partial replacement?) :
		public Child.Ctx childCtx(Content slot) {
			return new Child.Ctx(slot);
		}
	}
}
