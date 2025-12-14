package org.svenehrke.demo.web.p02simplevcdemos.page03withparamscomponent;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class PageWithParamsComponentCode {
	public record Ctx() implements ViewContext {
	}
}
