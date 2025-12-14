package org.svenehrke.demo.web.p02simplevcdemos.page05withnestedcomponents;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;

@ViewComponent
public class HelloWorldNestedContent {

	public record Ctx(Content greetingText) implements ViewContext {
	}

	public static Ctx ctx(Content greetingText) {
		return new Ctx(greetingText);
	}
}
