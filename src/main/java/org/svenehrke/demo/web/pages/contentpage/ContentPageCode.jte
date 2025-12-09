<hr>
<h2 class="subtitle">Code</h2>
<div>
    <strong>src/main/java/.../ContentPage.java:</strong>
    <pre><code>&#64;ViewComponent
&#64;Controller
public class ContentPage {

  public static final String URL = "/ui/pages/contentpage";
  public record Ctx() implements ViewContext {}

  &#64;GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>

    <strong>src/main/java/.../ContentPage.jte:</strong>
    <pre><code>&lt;h1&gt;Content Page&lt;/h1&gt;
</code></pre>
</div>
