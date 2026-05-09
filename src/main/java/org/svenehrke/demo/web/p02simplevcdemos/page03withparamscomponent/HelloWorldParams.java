package org.svenehrke.demo.web.p02simplevcdemos.page03withparamscomponent;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

// docs:start component
@ViewComponent
public class HelloWorldParams {
	public record Ctx(String greeting, String greetee) implements ViewContext {}
}
// docs:end component
