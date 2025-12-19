package jte.plainjte;

public class Page02InclCode {
	public static String PAGE_JTE = """
      <h1>Application Page</h1>

      <!-- Include Component: -->
      @template.jte.components.helloworld()
      """;

	public static String PAGE_JAVA = """
      @Controller
      public class PlainJTEController {
        public static final String PAGE_02_INCL_URL = "/page02incl";

        @GetMapping(PAGE_02_INCL_URL)
        public String appPageIncl() {
          return "jte/plainjte/page02incl";
        }
      }
      """;

	public static String HELLO_WORLD_JTE = """
      <h3>Hello world!</h3>
      """;

}
