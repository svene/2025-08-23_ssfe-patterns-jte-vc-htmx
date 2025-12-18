package org.svenehrke.demo.web.p03pages.p03custompagewithparam;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;

@ViewComponent
@Controller
public class CustomPageWithParamCode {
	public record Ctx() implements ViewContext { }

	public static String JTE = """
      <!-- NOTE: WHOLE HTML PAGE: -->
      <!DOCTYPE html>
      <html lang="en">
      @template.jte.pages.page_head() <!-- INSERT HEAD COMPONENT -->
      <body>
      <div>
        <h1>Custom Page with Param says: ${ctx.greeting()}</h1>
      </div>
      </body>
      </html>
      """;

	public static String JAVA = """
      @ViewComponent
      @Controller
      public class CustomPageWithParam {
        public static final String URL = "/ui/pages/custompagewithparam";
        public record Ctx(String greeting) implements ViewContext {}

        @GetMapping(URL)
        public Ctx ctx(
          @RequestParam(name = "greeting", required = false, defaultValue = "Hello")
          String greeting
        ) {
          return new Ctx(greeting);
        }
      }
      """;

}
