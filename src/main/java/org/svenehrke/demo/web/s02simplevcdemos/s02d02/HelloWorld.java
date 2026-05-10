package org.svenehrke.demo.web.s02simplevcdemos.s02d02;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

// docs:start component
@ViewComponent
public class HelloWorld {
	public record Ctx() implements ViewContext {}
}
// docs:end component
