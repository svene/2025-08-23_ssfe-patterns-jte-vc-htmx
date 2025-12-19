package jte.plainjte;

public class Page04PassContentCode {
	public static String PAGE_JTE = """
      <h1>Page with ContentParams-Component</h1>

      @template.jte.components.helloworldcontent(
        greetingText = @` <%-- include HTML content --%>
          How are you?<br>
          Hopefully <strong>very well</strong>.<br>
          <p>See you soon!</p>
        `
      )
      """;

	public static String PAGE_JAVA = """
      @Controller
      public class PlainJTEController {
        public static final String PAGE_04_PASS_CONTENT_URL = "/page04passcontent";

        @GetMapping(PAGE_04_PASS_CONTENT_URL)
        public String appPagePassContent() {
          return "jte/plainjte/page04passcontent";
        }
      }
      """;

	public static String HELLO_WORLD_JTE = """
      @param gg.jte.Content greetingText = @``

      ${greetingText}
      """;

}
