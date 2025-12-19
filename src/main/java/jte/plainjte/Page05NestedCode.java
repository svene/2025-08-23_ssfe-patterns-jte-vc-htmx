package jte.plainjte;

public class Page05NestedCode {
	public static String PAGE_JTE = """
      <h1>Application Page</h1>

      @template.jte.components.helloworldcontent(
        greetingText = @` <%-- outer template --%>
          <p>before nested content</p>
          @template.jte.components.helloworldcontent(
            greetingText = @` <%-- nested template --%>
              <p>NESTED CONTENT</p>
          `)
          <p>after nested content</p>
        `)
      """;

	public static String PAGE_JAVA = """
      @Controller
      public class PlainJTEController {
        public static final String PAGE_05_NESTED_URL = "/page05nested";

        @GetMapping(PAGE_05_NESTED_URL)
        public String appPageNested() {
          return "jte/plainjte/page05nested";
        }
      }
      """;

}
