package org.svenehrke.demo.web.p02simplevcdemos.page04withcontentparamscomponent;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class PageWithContentParamsComponentCode {
	public record Ctx() implements ViewContext {}

	public static String PAGE_JTE = """
      <h1>Page with ContentParams-Component</h1>
      
      ${new HelloWorldContent.Ctx(@` <%-- include HTML content --%>
        How are you?<br>
        Hopefully <strong>very well</strong>.<br>
        <p>See you soon!</p>
      `)}
      """;

	public static String PAGE_JAVA = """
      @ViewComponent
      public class PageWithContentParamsComponent {
        public static final String URL = "/ui/demos/simplevc/pagewithcontentparamscomponent";
        public record Ctx() implements ViewContext {}
      
        @GetMapping(URL)
        public Ctx ctx() {
          return new Ctx();
        }
      }
      """;

	public static String HELLO_WORLD_JTE = """
      @param HelloWorldContent.Ctx ctx
      
      ${ctx.greetingText()}
      """;

	public static String HELLO_WORLD_JAVA = """
      @ViewComponent
      public class HelloWorldContent {
        public record Ctx(Content greetingText) implements ViewContext {}
      }
      """;

}
