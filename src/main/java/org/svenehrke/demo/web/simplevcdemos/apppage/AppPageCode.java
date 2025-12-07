package org.svenehrke.demo.web.simplevcdemos.apppage;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class AppPageCode {
	public record Ctx() implements ViewContext {
	}
}
