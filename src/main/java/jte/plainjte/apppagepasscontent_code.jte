<div class="codeblock">
<strong>src/main/java/.../ApplicationPageController.java:</strong>
<pre><code>@Controller
public class ApplicationPageController {

  public static final String APP_PAGE_PASS_CONTENT_URL = "/apppagepasscontent";

  @GetMapping(APP_PAGE_PASS_CONTENT_URL)
  public String appPagePassContent() {
    return "jte/plainjte/apppagepasscontent";
  }
}
</code></pre>

<hr>
<strong>src/main/java/jte/apppagepasscontent.jte:</strong>
<pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;

&#64;template.jte.components.helloworldcontent( // &lt;lt;=== include the JTE partial
    greetingText = &#64;` // &lt;=== include HTML content
    How are you?&lt;br&gt;
    Hopefully &lt;strong>very well&lt;/strong&gt;.&lt;br&gt;
    &lt;p&gt;See you soon!&lt;/p&gt;
    `
)

</code></pre>

<hr>
<strong>src/main/java/jte/helloworldcontent.jte:</strong>
<pre><code>
&#64;param gg.jte.Content greetingText = &#64;``

&#36;{greetingText}

</code></pre>

</div>
