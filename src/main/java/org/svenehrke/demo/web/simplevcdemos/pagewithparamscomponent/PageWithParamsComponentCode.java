package org.svenehrke.demo.web.simplevcdemos.pagewithparamscomponent;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class PageWithParamsComponentCode {
	public record Ctx() implements ViewContext {
	}
}
