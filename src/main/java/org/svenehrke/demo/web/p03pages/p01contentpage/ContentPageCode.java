package org.svenehrke.demo.web.p03pages.p01contentpage;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class ContentPageCode {
	public record Ctx() implements ViewContext {
	}
}
