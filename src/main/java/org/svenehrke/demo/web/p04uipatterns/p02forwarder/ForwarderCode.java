package org.svenehrke.demo.web.p04uipatterns.p02forwarder;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;

@ViewComponent
@Controller
public class ForwarderCode {
	public record Ctx() implements ViewContext { }

	public static String PAGE_JTE = """
      @template.jte.pages.bulmapage(
        content = @`
          <h3>Forwarder-Page</h3>
          <div>${new First().ctx("hello")}</div>
          <div>${new First().ctx("hello with forward")}</div>
      `)
      """;

	public static String PAGE_JAVA = """
      @ViewComponent
      @Controller
      public class ForwarderPage {
        public static final String URL = "/ui/pages/componentforwarder";

        public record Ctx(String greeting) implements ViewContext {}

        @GetMapping(URL)
        public Ctx ctx(
          @RequestParam(name = "greeting", required = false, defaultValue = "Hello from Component-Forwarder-Page")
          String greeting
        ) {
          return new Ctx(greeting);
        }
      }
      """;

	public static String FIRST_JTE = """
      @param First.Ctx ctx
      <div>First: ${ctx.greeting()}</div>
      """;

	public static String FIRST_JAVA = """
      @ViewComponent
      public class First {
        public record Ctx(String greeting) implements ViewContext {}
        /** Note:
         * - needs to return general 'ViewContext' type so that either First.Ctx or Second.Ctx can be returned
         * - this is an example where it makes sense that the JTE calls a ctx() function rather than new First.Ctx()
         * - alternative: JTE implements the conditional logic using @if
         **/
        public ViewContext ctx(String greeting) {
          if (greeting.contains("forward")) {
            // forward:
            return new Second.Ctx(
              "(First: '%s' -> Second)".formatted(greeting)
            );
          } else {
            return new Ctx(greeting);
          }
        }
      }
      """;

	public static String SECOND_JTE = """
      @param Second.Ctx ctx
      <div>Second: ${ctx.greeting()}</div>
      """;

	public static String SECOND_JAVA = """
      @ViewComponent
      public class Second {
        public record Ctx(String greeting) implements ViewContext {}
      }
      """;

}
