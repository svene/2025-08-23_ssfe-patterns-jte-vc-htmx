<div class="codeblock">
    <strong>src/main/java/.../AppPageInclParams.java:</strong>
    <pre><code>&#64;ViewComponent
&#64;Controller
public class AppPageInclParams {

  public static final String URL = "/ui/demos/simplevc/applicationpageinclparams";

  public record Ctx() implements ViewContext {
  }

  &#64;GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>

    <strong>src/main/java/.../AppPageInclParams.jte:</strong>
    <pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;
&#36;{new HelloWorld.Ctx("hello", "world")} // &lt;=== include the View Component (variant 1)
&#36;{HelloWorld.ctx("hello", "world")} // &lt;=== include the View Component (variant 2)
</code></pre>
    <hr>
    <strong>src/main/java/.../HelloWorldParams.java:</strong>
    <pre><code>&#64;ViewComponent
public class HelloWorldParams {
  public record Ctx(String greeting, String greetee) implements ViewContext { // &lt;=== include the View Component (variant 1)
  }

  public Ctx ctx(String greeting, String greetee) { // &lt;=== include the View Component (variant 2)
    return new Ctx(greeting, greetee);
  }
}
</code></pre>
    <hr>
    <strong>src/main/java/.../HelloWorldParams.jte:</strong>
    <pre><code>&#64;param HelloWorldParams.Ctx ctx
&lt;h3&gt;&#36;{ctx.greeting()} &#36;{ctx.greetee()}!&lt;/h3&gt;
</code></pre>

</div>
