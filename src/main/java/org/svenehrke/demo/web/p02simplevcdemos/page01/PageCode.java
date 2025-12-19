package org.svenehrke.demo.web.p02simplevcdemos.page01;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class PageCode {
	public record Ctx() implements ViewContext {
	}
	public static String PAGE_JTE = """
      <h1>Application Page</h1>
      """;

	public static String PAGE_JAVA = """
      @ViewComponent
      @Controller
      public class Page {
        public static final String URL = "/ui/demos/simplevc/page";

        @GetMapping(URL)
        public Ctx ctx() {
          return new Ctx();
        }
      }
      """;
}
