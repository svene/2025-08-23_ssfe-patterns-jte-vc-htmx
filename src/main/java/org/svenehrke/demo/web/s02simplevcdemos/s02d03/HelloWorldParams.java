package org.svenehrke.demo.web.s02simplevcdemos.s02d03;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

// docs:start component
@ViewComponent
public class HelloWorldParams {
	public record Ctx(String greeting, String greetee) implements ViewContext {}
}
// docs:end component
