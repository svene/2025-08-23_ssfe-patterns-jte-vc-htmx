<div class="codeblock">
    <strong>src/main/java/.../Page.java:</strong>
    <pre><code>&#64;ViewComponent
&#64;Controller
public class Page {

public static final String URL = "/ui/demos/simplevc/page";

  public record Ctx() implements ViewContext {
  }

  &#64;GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>
    <hr>
    <strong>src/main/java/.../Page.jte:</strong>
    <pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;
</code></pre>

</div>
