@param String greetee

<h1>Application Page</h1>

<!--
first parameter passed literally from this template.
Second parameter coming in from controller through Model and passed to included template:
-->
@template.jte.components.helloworldparams(
  greeting = "Hello",
  greetee = greetee
)

<hr>
<h5>src/main/java/.../ApplicationPageController.java:</h5>
<pre><code>
@Controller
public class ApplicationPageController {

	public static final String APP_PAGE_INCL_PARAMS_URL = "/apppageinclparams";

	@GetMapping(APP_PAGE_INCL_PARAMS_URL)
	public String appPageIncl(Model model) {
		var firstName = "Bart";
		model.addAttribute("greetee", firstName);
		return "jte/plainjte/apppageinclparams";
	}
}
</code></pre>

<h5>src/main/java/jte/apppageinclparams.jte:</h5>
<pre><code>
&#64;param String greetee  // &lt;=== from Model passed by Controller
&lt;h1&gt;Application Page&lt;/h1&gt;

&#64;template.jte.components.helloworldparams( // &lt;=== include the JTE partial
  greeting = "Hello", // &lt;=== pass literal parameter to template
  greetee = greetee // &lt;=== pass parameter coming from model to template
)
</code></pre>

<h5>src/main/java/jte/helloworldparams.jte:</h5>
<pre><code>
&#64;param String greeting = "Hello"
&#64;param String greetee = "World"

&lt;h3&gt;&#36;{greeting} &#36;{greetee}&lt;/h3&gt;

</code></pre>
