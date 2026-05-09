package org.svenehrke.demo.web.p02simplevcdemos.page04withcontentparamscomponent;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;

// docs:start component
@ViewComponent
public class HelloWorldContent {
	public record Ctx(Content greetingText) implements ViewContext {}
}
// docs:end component
