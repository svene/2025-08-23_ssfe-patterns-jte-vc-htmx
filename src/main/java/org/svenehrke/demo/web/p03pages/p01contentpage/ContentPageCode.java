package org.svenehrke.demo.web.p03pages.p01contentpage;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class ContentPageCode {
	public record Ctx() implements ViewContext {}

	public static String PAGE_JTE = """
      @template.jte.pages.bulmapage(
        content = @`
          <h1>Content Page</h1>
      `)
      """;

	public static String PAGE_JAVA = """
      @ViewComponent
      @Controller
      public class ContentPage {
        public static final String URL = "/ui/pages/contentpage";
        public record Ctx() implements ViewContext {}
  
        @GetMapping(URL)
        public Ctx ctx() {
          return new Ctx();
        }
      }
      """;
	public static String BULMA_PAGE_JTE = """
      @param Content content = @``
      <!DOCTYPE html>
      <html lang="en">
      @template.jte.pages.page_head()
      <body>
        ${content}
      </body>
      </html>
      """;
}
