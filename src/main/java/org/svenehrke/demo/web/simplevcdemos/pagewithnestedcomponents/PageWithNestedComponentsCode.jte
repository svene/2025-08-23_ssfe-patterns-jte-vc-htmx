<div class="codeblock">
    <strong>src/main/java/.../PageWithNestedComponents.java:</strong>
    <pre><code>&#64;@ViewComponent
&#64;Controller
public class PageWithNestedComponents {
  public static final String URL = &quot;/ui/demos/simplevc/pagewithnestedcomponents&quot;;
  public record Ctx() implements ViewContext {}

  GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>

    <hr>
    <strong>src/main/java/.../PageWithNestedComponents.jte:</strong>
    <pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;

    &#36;{new HelloWorldNestedContent.Ctx(&#64;&grave;
        &lt;p&gt;before nested content&lt;/p&gt;

        &#36;{new HelloWorldNestedContent.Ctx(&#64;&grave;
            &lt;p&gt;NESTED CONTENT&lt;/p&gt;
        &grave;)}
        &lt;p&gt;after nested content&lt;/p&gt;
    &grave;)}
</code></pre>
    <hr>
    <strong>src/main/java/.../HelloWorldNestedContent.java:</strong>
    <pre><code>&#64;ViewComponent
public class HelloWorldNestedContent {
  public record Ctx(Content greetingText) implements ViewContext {
  }

  public Ctx ctx(Content greetingText) {
    return new Ctx(greetingText);
  }
}
</code></pre>
    <hr>
    <strong>src/main/java/.../HelloWorldNestedContent.jte:</strong>
    <pre><code>&#64;param HelloWorldNestedContent.Ctx ctx
&#36;{ctx.greetingText()}
</code></pre>

</div>
