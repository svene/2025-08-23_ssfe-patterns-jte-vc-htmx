<div class="fixed-grid">
    <div class="grid">

<%-- -------------------------------- CustomPageWithParam ------------------------------ --%>
<div>
<strong>CustomPageWithParam.jte</strong>
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

<%-- ------------------ --%>
<div>
    <strong>CustomPageWithParam.java</strong>
    <pre><code>&#64;ViewComponent
&#64;Controller
public class CustomPageWithParam {
  public static final String URL = &quot;&#47;ui&#47;pages&#47;custompagewithparam&quot;;
  public record Ctx(String greeting) implements ViewContext {}

  &#64;GetMapping(URL)
  public Ctx ctx(
    &#64;RequestParam(name = &quot;greeting&quot;, required = false, defaultValue = &quot;Hello&quot;) String greeting
  ) {
    return new Ctx(greeting);
  }
}
</code></pre>
</div>

    </div>
</div>

