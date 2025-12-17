<div class="fixed-grid">
    <%-- ParentPage: --%>
    <div class="grid">
        <div> <%-- Left --%>
            <strong>src/main/java/.../ParentPage.jte:</strong>
            <pre><code>&#64;template.jte.pages.bulmapage(
  content = @`...&#36;{new Parent.Ctx("hello")}...`
)
</code></pre>
        </div>

        <div> <%-- Right --%>
            <strong>src/main/java/.../ParentPage.java:</strong>
            <pre><code>&#64;ViewComponent
&#64;Controller
public class ParentPage {
  public static final String URL = &quot;/ui/pages/parent&quot;;
  public record Ctx() implements ViewContext { }

  @GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>
    </div>


        <%-- Parent: --%>
        <div> <%-- Left --%>
            <strong>src/main/java/.../Parent.jte:</strong>
            <pre><code>&#64;param Parent.Ctx ctx
&#36;{new Child.Ctx(&#64;&grave;slot-content from parent. Greeting: &#36;{ctx.greeting()}&grave;)}
</code></pre>
        </div>
        <div> <%-- Right --%>
            <strong>src/main/java/.../Parent.java:</strong>
            <pre><code>&#64;ViewComponent
@Controller
public class Parent {
  public record Ctx(String greeting) implements ViewContext {}
}
</code></pre>
        </div>

        <%-- Child: --%>
        <div> <%-- Left --%>
            <strong>src/main/java/.../Child.jte:</strong>
            <pre><code>&#64;param Child.Ctx ctx
Child: &#36;{ctx.slot1()}
</code></pre>
        </div>

        <div> <%-- Right --%>
            <strong>src/main/java/.../Child.java:</strong>
            <pre><code>&#64;ViewComponent
@Controller
public class Child {
  public record Ctx(Content slot1) implements ViewContext {}
}
</code></pre>
        </div>


    </div>
</div>

