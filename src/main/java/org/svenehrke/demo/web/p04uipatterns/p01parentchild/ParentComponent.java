package org.svenehrke.demo.web.p04uipatterns.p01parentchild;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;
import org.springframework.stereotype.Controller;

@ViewComponent
@Controller
public class ParentComponent {

	public static final String URL = "/ui/components/parent";

	public record Ctx(String greeting) implements ViewContext {
		public ChildComponent.Ctx childCtx(Content slot) {
			return new ChildComponent.Ctx(slot);
		}

	}


}
