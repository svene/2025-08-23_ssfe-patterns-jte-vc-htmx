package org.svenehrke.demo.web.p03pages.p04mpa;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class MpaCode {
	public record Ctx() implements ViewContext {}

	public static String MPA_JTE = """
      @param MpaLayout.Ctx ctx
      <html><body>
      <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-menu">
          <div class="navbar-start">
            <a href="${MpaPage1.URL}">Page 1</a>
            <a href="${MpaPage2.URL}">Page 2</a>
          </div>
        </div>
      </nav>
      
      <div>
        ${ctx.content()}
      </div>
      </body></html>
      """;

	public static String MPA_JAVA = """
      @ViewComponent
      public class MpaLayout {
        public record Ctx(
          String selectedMenu,
          Content content
        ) implements ViewContext {}
      }
      """;

	public static String PAGE1_JTE = """
      @param MpaPage1.Ctx ctx

      ${new MpaLayout.Ctx(
        "page1",
        @`
          <p>The pages of this application...</p>
        `)}
      """;

	public static String PAGE1_JAVA = """
      @ViewComponent
      @Controller
      public class MpaPage1 {
        public static final String URL = "/ui/pages/mpapage1";
        public record Ctx() implements ViewContext {}
      
        @GetMapping(URL)
        public Ctx ctx() {
          return new Ctx();
        }
      }
      """;

	public static String PAGE2_JTE = """
      @param MpaPage2.Ctx ctx

      ${new MpaLayout.Ctx(
        "page2",
        @`
          <p>Page2</p>
        `)}
      """;

	public static String PAGE2_JAVA = """
      @ViewComponent
      @Controller
      public class MpaPage2 {
        public static final String URL = "/ui/pages/mpapage2";
        public record Ctx() implements ViewContext {}
      
        @GetMapping(URL)
        public Ctx ctx() {
          return new Ctx();
        }
      }
      """;

}
