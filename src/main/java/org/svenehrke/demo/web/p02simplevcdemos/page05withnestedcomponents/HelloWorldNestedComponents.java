package org.svenehrke.demo.web.p02simplevcdemos.page05withnestedcomponents;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;

// docs:start component
@ViewComponent
public class HelloWorldNestedComponents {
	public record Ctx(Content greetingText) implements ViewContext { }
}
// docs:end component
