package jte.plainjte;

public class Page01Code {
	public static String PAGE_JTE = """
      <h1>Application Page</h1>
      """;

	public static String PAGE_JAVA = """
      @Controller
      public class PlainJTEController {
        public static final String PAGE_01_URL = "/page01";

        @GetMapping(PAGE_01_URL)
        public String app() {
          return "jte/plainjte/page01";
        }
      }
      """;
}
