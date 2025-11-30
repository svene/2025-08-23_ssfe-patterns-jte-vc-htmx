@import org.svenehrke.demo.web.simplevcdemos.applicationpageincl.HelloWorld

<h1>Application Page</h1>

${new HelloWorld.Ctx()}
${HelloWorld.ctx()}

<hr>
<h5>src/main/java/.../ApplicationPageInclComponent.java</h5>
<pre><code>
&#64;ViewComponent
&#64;Controller
public class ApplicationPageInclComponent {

  public static final String URL = "/ui/demos/simplevc/applicationpageincl";

  public record Ctx() implements ViewContext {
  }

  &#64;GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>

<h5>src/main/java/.../ApplicationPageInclComponent.jte</h5>
<pre><code>
&lt;h1&gt;Application Page&lt;/h1&gt;
&#36;{new HelloWorld.Ctx()} // &lt;=== include the View Component (variant 1)
&#36;{HelloWorld.ctx()} // &lt;=== include the View Component (variant 2)
</code></pre>

<h5>src/main/java/.../HelloWorld.java</h5>
<pre><code>
&#64;ViewComponent
public class HelloWorld {
  public record Ctx() implements ViewContext { // &lt;=== include the View Component (variant 1)
  }

  public Ctx ctx() { // &lt;=== include the View Component (variant 2)
    return new Ctx();
  }
}
</code></pre>

<h5>src/main/java/.../HelloWorld.jte</h5>
<pre><code>
&lt;h3&gt;Hello world!&lt;/h3&gt;
</code></pre>

