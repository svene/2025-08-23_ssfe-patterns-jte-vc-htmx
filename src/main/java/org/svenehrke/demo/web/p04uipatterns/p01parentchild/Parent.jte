@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.Parent
@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.Child

@param Parent.Ctx ctx

<h3>Parent</h3>
<div class="area-border p-1">
${new Child.Ctx(@`slot-content from parent. Greeting: ${ctx.greeting()}`)}
</div>
