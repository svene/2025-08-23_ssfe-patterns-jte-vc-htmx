package org.svenehrke.demo.web.s03pages.s03d04;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;

// docs:start page
@ViewComponent
public class MpaLayout {
	public record Ctx(String selectedMenu, Content content) implements ViewContext {}
}
// docs:end page
