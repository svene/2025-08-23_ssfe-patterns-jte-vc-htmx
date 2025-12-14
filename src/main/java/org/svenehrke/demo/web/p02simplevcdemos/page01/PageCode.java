package org.svenehrke.demo.web.p02simplevcdemos.page01;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class PageCode {
	public record Ctx() implements ViewContext {
	}
}
