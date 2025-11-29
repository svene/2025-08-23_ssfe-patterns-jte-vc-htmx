<h1 class="is-1">Hello world!</h1>

<hr>
<h5>src/main/java/.../HelloWorldController.java</h5>
<pre><code>
@Controller
public class HelloWorldController {

	@GetMapping("/helloworld")
	public String helloworld() {
		return "jte/helloworld";
	}
}
</code></pre>
<hr>
<h5>src/main/java/jte/helloworld.jte</h5>
<pre><code>
&lt;h1 class="is-1"&gt;Hello world!&lt;/h1&gt;
</code></pre>
<hr>
