<div class="fixed-grid">
    <div class="grid">

<%-- -------------------------------- ForwarderPage ------------------------------ --%>
<div>
<strong>ForwarderPage.jte</strong>
<pre><code>&#64;template.jte.pages.bulmapage(
  content = &#64;`
  &lt;h3&gt;Forwarder-Page&lt;&#47;h3&gt;
  &lt;div&gt;&#36;{new First().ctx(&quot;hello&quot;)}&lt;&#47;div&gt;
  &lt;div&gt;&#36;{new First().ctx(&quot;hello with forward&quot;)}&lt;&#47;div&gt;
`)
</code></pre>
</div>

<%-- ------------------ --%>
<div>
<strong>ForwarderPage.java</strong>
<pre><code>&#64;ViewComponent
&#64;Controller
public class ForwarderPage {
  public static final String URL = &quot;/ui/pages/componentforwarder&quot;;
  public record Ctx() implements ViewContext { }

  &#64;GetMapping(URL)
  public Ctx ctx(
    &#64;RequestParam(name = &quot;greeting&quot;, required = false, defaultValue = &quot;Hello from Component-Forwarder-Page&quot;) String greeting
  ) {
    return new Ctx(greeting);
  }
}
</code></pre>
</div>


<%-- -------------------------------- First ------------------------------ --%>
<div>
<strong>First.jte</strong>
<pre><code>&#64;param First.Ctx ctx
&lt;div&gt;First: &#36;{ctx.greeting()}&lt;&#47;div&gt;
</code></pre>
</div>
<%-- ------------------ --%>
<div>
<strong>First.java</strong>
<pre><code>&#64;ViewComponent
public class First {
  public record Ctx(String greeting) implements ViewContext {}
  public ViewContext ctx(String greeting) { &#47;&#47; Note: needs to return general &#39;ViewContext&#39; type:
    if (greeting.contains(&quot;forward&quot;)) {
      &#47;&#47; forward:
      return new Second().ctx(&quot;(First: &#39;%s&#39; -&gt; Second)&quot;.formatted(greeting));
    }
    return new Ctx(greeting);
}
</code></pre>
</div>

<%-- -------------------------------- Second ------------------------------ --%>
<div>
<strong>Second.jte</strong>
<pre><code>&#64;param Second.Ctx ctx
&lt;div&gt;Second: &#36;{ctx.greeting()}&lt;&#47;div&gt;
</code></pre>
</div>

<%-- ------------------ --%>
<div>
<strong>Second.java</strong>
<pre><code>&#64;ViewComponent
public class Second {
  public record Ctx(String greeting) implements ViewContext {}
  public Ctx ctx(String greeting) {
    return new Ctx(greeting);
  }
}
</code></pre>
</div>


    </div>
</div>

