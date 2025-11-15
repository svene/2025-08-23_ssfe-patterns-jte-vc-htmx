@import org.svenehrke.demo.web.components.parentchild.ParentComponent

@param ParentComponent.Ctx ctx

<h3>Parent-Component</h3>
<div class="area-border p-1">
${ctx.childCtx(@`
    slot-content from parent. Greeting: ${ctx.greeting()}
`)}
</div>
