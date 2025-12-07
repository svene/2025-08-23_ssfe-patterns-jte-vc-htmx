package org.svenehrke.demo.web.simplevcdemos.applicationpageinclparams;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class AppPageInclParamsCode {
	public record Ctx() implements ViewContext {
	}
}
