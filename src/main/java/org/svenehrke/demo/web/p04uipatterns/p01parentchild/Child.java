package org.svenehrke.demo.web.p04uipatterns.p01parentchild;


import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import gg.jte.Content;

@ViewComponent
public class Child {
	public static final String URL = "/ui/components/child";
	public record Ctx(Content slot1)  implements ViewContext {}
}
