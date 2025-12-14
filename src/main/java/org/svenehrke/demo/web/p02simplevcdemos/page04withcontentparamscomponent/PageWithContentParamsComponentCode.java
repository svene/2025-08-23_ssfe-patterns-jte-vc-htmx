package org.svenehrke.demo.web.p02simplevcdemos.page04withcontentparamscomponent;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class PageWithContentParamsComponentCode {
	public record Ctx() implements ViewContext {
	}
}
