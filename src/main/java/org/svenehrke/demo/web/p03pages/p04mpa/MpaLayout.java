package org.svenehrke.demo.web.p03pages.p04mpa;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;

@ViewComponent
public class MpaLayout {

	public record Ctx(
		String selectedMenu,
		Content content
	) implements ViewContext {
	}
}
