package org.svenehrke.demo.web.p02simplevcdemos.page02withcomponent;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class HelloWorld {
	public record Ctx() implements ViewContext {}
}
