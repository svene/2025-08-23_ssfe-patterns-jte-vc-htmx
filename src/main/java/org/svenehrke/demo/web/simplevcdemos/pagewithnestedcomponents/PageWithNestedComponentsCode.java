package org.svenehrke.demo.web.simplevcdemos.pagewithnestedcomponents;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class PageWithNestedComponentsCode {
	public record Ctx() implements ViewContext {
	}
}
