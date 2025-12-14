<div class="codeblock">
<strong>src/main/java/.../ApplicationPageController.java:</strong>
<pre><code>@Controller
public class ApplicationPageController {

  public static final String APP_PAGE_NESTED_URL = "/apppagenested";

  @GetMapping(APP_PAGE_NESTED_URL)
  public String appPageNested() {
    return "jte/plainjte/apppagenested";
  }
}
</code></pre>

<hr>
<strong>src/main/java/jte/apppagenested.jte:</strong>
<pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;

&#64;template.jte.components.helloworldcontent( // outer template
  greetingText = &#64;`
    &lt;p&gt;before nested content&lt;/p&gt;
    &#64;template.jte.components.helloworldcontent( // template in template
      greetingText = @`
        &lt;p&gt;NESTED CONTENT&lt;/p&gt;
    `)
    &lt;p&gt;after nested content&lt;/p&gt;
  `)

</code></pre>

</div>
