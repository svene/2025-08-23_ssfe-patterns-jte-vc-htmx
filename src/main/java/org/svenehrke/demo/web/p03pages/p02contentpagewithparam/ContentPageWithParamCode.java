package org.svenehrke.demo.web.p03pages.p02contentpagewithparam;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;

@ViewComponent
@Controller
public class ContentPageWithParamCode {
	public record Ctx() implements ViewContext {}

	public static String PAGE_JTE = """
      @template.jte.pages.bulmapage(
        content = @`
          <h1>Content Page with Param says: ${ctx.greeting()}</h1>
      `)
      """;

	public static String PAGE_JAVA = """
      @ViewComponent
      @Controller
      public class ContentPageWithParam {
        public static final String URL = "/ui/pages/contentpagewithparam";
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
