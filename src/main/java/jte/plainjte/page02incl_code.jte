<div class="codeblock">

    <strong>src/main/java/.../ApplicationPageController.java:</strong>
    <pre><code>&#64;Controller
public class ApplicationPageController {

	public static final String APP_PAGE_INCL_URL = "/apppageincl";

	&#64;GetMapping(APP_PAGE_INCL_URL)
	public String appPageIncl() {
		return "jte/plainjte/apppageincl";
	}
}

</code></pre>
    <hr>
    <strong>src/main/java/jte/app.jte:</strong>
    <pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;
&#64;template.jte.components.helloworld() // &lt;--- include the JTE component
</code></pre>
    <hr>
    <strong>src/main/java/jte/helloworld.jte:</strong>
    <pre><code>&lt;h3&gt;Hello world!&lt;/h3&gt;
</code></pre>
</div>
