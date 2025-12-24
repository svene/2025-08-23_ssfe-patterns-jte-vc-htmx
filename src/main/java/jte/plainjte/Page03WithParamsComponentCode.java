package jte.plainjte;

public class Page03WithParamsComponentCode {
	public static String PAGE_JTE = """
      <%-- from model, passed by controller: --%>
      @param String greetee
		
      <h1>Page with Params-Component</h1>

      <%--
      First parameter passed literally from this template.
      Second parameter coming in from controller through Model
      and passed to included template:
      --%>
      @template.jte.components.helloworldparams(
        greeting = "Hey", // <=== literal parameter
        greetee = greetee   // <=== model parameter
      )
      """;

	public static String PAGE_JAVA = """
      @Controller
      public class PlainJTEController {
        public static final String PAGE_03_INCL_PARAMS_URL = "/page03inclparams";

        @GetMapping(PAGE_03_INCL_PARAMS_URL)
        public String appPageInclParams(Model model) {
          model.addAttribute("greetee", "You");
          return "jte/plainjte/page03inclparams";
        }
      }
      """;

	public static String HELLO_WORLD_JTE = """
      @param String greeting = "Hello"
      @param String greetee = "World"

      <h3>${greeting} ${greetee}!</h3>
      """;

}
