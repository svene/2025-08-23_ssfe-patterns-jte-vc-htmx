<h1>Application Page</h1>

@template.jte.helloworld()

<hr>
<h5>src/main/java/.../ApplicationPageController.java</h5>
<pre><code>
@Controller
public class ApplicationPageController {

	public static final String APP_PAGE_INCL_URL = "/apppageincl";

	@GetMapping(APP_PAGE_INCL_URL)
	public String appPageIncl() {
		return "jte/apppageincl";
	}
}
</code></pre>
<hr>
<h5>src/main/java/jte/app.jte</h5>
<pre><code>
&lt;h1&gt;Application Page&lt;/h1&gt;
&#64;template.jte.helloworld() // &lt;--- include the JTE partial
</code></pre>
<hr>
<h5>src/main/java/jte/helloworld.jte</h5>
<pre><code>
&lt;h3&gt;Hello world!&lt;/h3&gt;
</code></pre>
<hr>
