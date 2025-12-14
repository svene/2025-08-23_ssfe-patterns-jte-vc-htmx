<div>
<strong>src/main/java/.../CustomPageWithParamCode.java:</strong>
<pre><code>@ViewComponent
&#64;Controller
public class CustomPageWithParamCode {

  public static final String URL = &quot;/ui/pages/custompagewithparam&quot;;
  public record Ctx(String greeting) implements ViewContext {}

  &#64;GetMapping(URL)
  public Ctx ctx(
    @RequestParam(name = &quot;greeting&quot;, required = false, defaultValue = &quot;Hello&quot;) String greeting
  ) {
    return new Ctx(greeting);
  }
}
</code></pre>

<strong>src/main/java/.../CustomPageWithParamCode.jte:</strong>
<pre><code>&lt;!-- NOTE: WHOLE HTML PAGE: --&gt;
&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&#64;template.jte.pages.page_head() &lt;!-- &lt;== INSERT HEAD COMPONENT --&gt;

&lt;body&gt;
&lt;div&gt;

    &lt;div&gt;
        &lt;h1&gt;Custom Page with Param says: &#36;{ctx.greeting()}&lt;/h1&gt;
    &lt;/div&gt;
&lt;/div&gt;

&lt;/body&gt;
&lt;/html&gt;
</code></pre>

</div>
