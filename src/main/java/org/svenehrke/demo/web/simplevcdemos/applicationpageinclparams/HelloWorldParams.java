package org.svenehrke.demo.web.simplevcdemos.applicationpageinclparams;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class HelloWorldParams {

	public record Ctx(String greeting, String greetee) implements ViewContext {
	}

	public static Ctx ctx(String greeting, String greetee) {
		return new Ctx(greeting, greetee);
	}
}
