package org.svenehrke.demo.web.p02simplevcdemos.page05withnestedcomponents;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class PageWithNestedComponentsCode {
	public record Ctx() implements ViewContext {}

	public static String PAGE_JTE = """
      <h1>Page with Nested Components</h1>
      
      ${new HelloWorldNestedComponents.Ctx(@`
        <p>before nested content</p>
        ${new HelloWorldNestedComponents.Ctx(@`
          <p>NESTED CONTENT</p>
        `)}
        <p>after nested content</p>
      `)}
      """;

	public static String PAGE_JAVA = """
      @ViewComponent
      public class PageWithNestedComponents {
        public static final String URL = "/ui/demos/simplevc/pagewithnestedcomponents";
        public record Ctx() implements ViewContext {}
      
        @GetMapping(URL)
        public Ctx ctx() {
          return new Ctx();
        }
      }
      """;

	public static String HELLO_WORLD_JTE = """
      @param HelloWorldNestedComponents.Ctx ctx
      
      ${ctx.greetingText()}
      """;

	public static String HELLO_WORLD_JAVA = """
      @ViewComponent
      public class HelloWorldNestedComponents {
        public record Ctx(Content greetingText) implements ViewContext {}
      }
      """;

}
