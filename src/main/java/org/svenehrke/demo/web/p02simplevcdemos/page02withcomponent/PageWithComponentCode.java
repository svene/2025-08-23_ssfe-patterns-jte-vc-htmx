package org.svenehrke.demo.web.p02simplevcdemos.page02withcomponent;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class PageWithComponentCode {
	public record Ctx() implements ViewContext {}

	public static String PAGE_JTE = """
      <h1>Page with Component</h1>
      
      ${new HelloWorld.Ctx()}
      """;

	public static String HELLO_WORLD_JTE = """
      <h3>Hello world!</h3>
      """;

	public static String PAGE_JAVA = """
      @ViewComponent
      @Controller
      public class PageWithComponent {
        public static final String URL = "/ui/demos/simplevc/pagewithcomponent";
        public record Ctx() implements ViewContext {}

        @GetMapping(URL)
        public Ctx ctx() {
          return new Ctx();
        }
      }
      """;
}
