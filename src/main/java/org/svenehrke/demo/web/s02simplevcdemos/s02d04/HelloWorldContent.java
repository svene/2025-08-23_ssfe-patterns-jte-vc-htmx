package org.svenehrke.demo.web.s02simplevcdemos.s02d04;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;

// docs:start component
@ViewComponent
public class HelloWorldContent {
	public record Ctx(Content greetingText) implements ViewContext {}
}
// docs:end component
