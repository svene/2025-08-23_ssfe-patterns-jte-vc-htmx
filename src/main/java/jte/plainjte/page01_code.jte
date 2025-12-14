<div class="codeblock">
    <strong>src/main/java/.../ApplicationPageController.java:</strong>
    <pre><code>@Controller
public class ApplicationPageController {

	@GetMapping("/app")
	public String app() {
		return "jte/plainjte/app";
	}
}
</code></pre>
    <hr>
    <strong>src/main/java/jte/app.jte:</strong>
    <pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;
</code></pre>
</div>
