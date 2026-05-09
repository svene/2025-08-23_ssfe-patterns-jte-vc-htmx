package org.svenehrke.demo.web.p02simplevcdemos.page02withcomponent;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

// docs:start component
@ViewComponent
public class HelloWorld {
	public record Ctx() implements ViewContext {}
}
// docs:end component
