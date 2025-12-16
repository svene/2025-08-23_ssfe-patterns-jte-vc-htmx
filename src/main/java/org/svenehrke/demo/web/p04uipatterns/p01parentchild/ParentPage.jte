@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.Parent
@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ParentPage

@param ParentPage.Ctx ctx

@template.jte.pages.bulmapage(
content = @`
    <div class="is-flex is-justify-content-space-around p-1">
        <div>
<pre>
// Parent-Page-Component:
// Variant 1: Direct inclusion from JTE-template using 'new Ctx()':
&#36;{new ParentComponent.Ctx("hello"))

// Parent-Component:
// Variant 2: Indirect inclusion using a ctx-function:
&#36;{ctx.childCtx(&#64;&#96;slot-content from parent...&#96;)

// Parent-Component (Java):
public record Ctx(String greeting) implements ViewContext {
    public ChildComponent.Ctx childCtx(Content slot) {
        return new ChildComponent.Ctx(slot);
    }
}

// Child-Component:
child: &#36;{ctx.slot1()}
</pre>
</div>

        <div class="area-border p-1">
            <h3>Parent-Page</h3>
            <div class="area-border p-1">
                ${new Parent.Ctx("hello")}
            </div>
        </div>
    </div>

`)
