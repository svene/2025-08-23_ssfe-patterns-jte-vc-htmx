package org.svenehrke.demo.web;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class SimpleViewComponent {

	public record Ctx(String helloWorld) implements ViewContext {
	}

	public Ctx render() {
		return new Ctx("Hello World");
	}
}
