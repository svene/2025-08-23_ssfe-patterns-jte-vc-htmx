<hr>
<div>
    <strong>src/main/java/.../ContentPageWithParam.java:</strong>
    <pre><code>&#64;ViewComponent
&#64;Controller
public class ContentPageWithParam {

  public static final String URL = "/ui/pages/contentpagewithparam";
  public record Ctx(String greeting) implements ViewContext {}

  &#64;GetMapping(URL)
  public Ctx ctx(
    @RequestParam(name = "greeting", required = false, defaultValue = "Hello") String greeting
  ) {
    return new Ctx(greeting);
  }
}
</code></pre>

    <strong>src/main/java/.../ContentPageWithParam.jte:</strong>
    <pre><code>&#64;param ContentPageWithParam.Ctx ctx
&#64;template.jte.pages.bulmapage(
  content = @`
    &lt;h1 class="title"&gt;Content Page with Param says: &#36;{ctx.greeting()}&lt;/h1&gt;
    `
)
</code></pre>

</div>
