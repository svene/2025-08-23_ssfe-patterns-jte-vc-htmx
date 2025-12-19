package org.svenehrke.demo.web.p02simplevcdemos.page03withparamscomponent;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;

@ViewComponent
public class PageWithParamsComponentCode {
	public record Ctx() implements ViewContext {}

	public static String PAGE_JTE = """
      <h1>Application Page</h1>
      
      ${new HelloWorldParams.Ctx("hello", "world")}
      """;

	public static String HELLO_WORLD_JTE = """
      @param HelloWorldParams.Ctx ctx
      
      <h3>${ctx.greeting()} ${ctx.greetee()}!</h3>
      """;

	public static String HELLO_WORLD_JAVA = """
      @ViewComponent
      public class HelloWorldParams {
        public record Ctx(String greeting, String greetee) implements ViewContext {}
      }
      """;

	public static String PAGE_JAVA = """
      @ViewComponent
      public class PageWithParamsComponent {
        public static final String URL = "/ui/demos/simplevc/pagewithparamscomponent";
        public record Ctx() implements ViewContext {}
      
        @GetMapping(URL)
        public Ctx ctx() {
        	return new Ctx();
        }
      }
      """;
}
