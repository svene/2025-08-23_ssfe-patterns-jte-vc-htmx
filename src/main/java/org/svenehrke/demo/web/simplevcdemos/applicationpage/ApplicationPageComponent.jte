<h1>Application Page</h1>

<hr>
<h5>src/main/java/.../ApplicationPageComponent.java</h5>
<pre><code>
&#64;ViewComponent
&#64;Controller
public class ApplicationPageComponent {

public static final String URL = "/ui/demos/simplevc/applicationpage";

  public record Ctx() implements ViewContext {
  }

  &#64;GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>

<h5>src/main/java/.../ApplicationPageComponent.jte</h5>
<pre><code>
&lt;h1&gt;Application Page&lt;/h1&gt;
</code></pre>
