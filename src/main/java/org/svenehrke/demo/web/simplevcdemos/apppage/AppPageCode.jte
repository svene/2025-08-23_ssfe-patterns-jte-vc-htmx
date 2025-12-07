<div class="codeblock">
    <strong>src/main/java/.../AppPage.java:</strong>
    <pre><code>&#64;ViewComponent
&#64;Controller
public class AppPage {

public static final String URL = "/ui/demos/simplevc/apppage";

  public record Ctx() implements ViewContext {
  }

  &#64;GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>
    <hr>
    <strong>src/main/java/.../AppPage.jte:</strong>
    <pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;
</code></pre>

</div>
