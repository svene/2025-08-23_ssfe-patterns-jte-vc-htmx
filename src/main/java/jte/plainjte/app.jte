<h1>Application Page</h1>

<hr>
<h5>src/main/java/.../ApplicationPageController.java</h5>
<pre><code>
@Controller
public class ApplicationPageController {

	@GetMapping("/app")
	public String app() {
		return "jte/plainjte/app";
	}
}
</code></pre>
<hr>
<h5>src/main/java/jte/app.jte</h5>
<pre><code>
&lt;h1&gt;Application Page&lt;/h1&gt;
</code></pre>
<hr>
