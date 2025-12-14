<div class="codeblock">
    <strong>src/main/java/.../PageWithContentParamsComponent.java:</strong>
    <pre><code>&#64;ViewComponent
&#64;Controller
public class PageWithContentParamsComponent {

  public static final String URL = "/ui/demos/simplevc/pagewithcontentparamscomponent";

  public record Ctx() implements ViewContext {
  }

  &#64;GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>

    <hr>
    <strong>src/main/java/.../PageWithContentParamsComponent.jte:</strong>
    <pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;
&#36;{new HelloWorldContent.Ctx(
    &#64;` // &lt;=== include HTML content
    How are you?&lt;br&gt;
    Hopefully &lt;strong>very well&lt;/strong&gt;.&lt;br&gt;
    &lt;p&gt;See you soon!&lt;/p&gt;
    `)
}
</code></pre>
    <hr>
    <strong>src/main/java/.../HelloWorldContent.java:</strong>
    <pre><code>&#64;ViewComponent
public class HelloWorldContent {
  public record Ctx(Content greetingText) implements ViewContext {
  }

  public Ctx ctx(Content greetingText) {
    return new Ctx(greetingText);
  }
}
</code></pre>
    <hr>
    <strong>src/main/java/.../HelloWorldContent.jte:</strong>
    <pre><code>&#64;param HelloWorldContent.Ctx ctx
&#36;{ctx.greetingText()}
</code></pre>

</div>
