@import org.svenehrke.demo.web.components.parentchild.ParentComponent

@param ParentComponent.Ctx ctx

<h3>Parent-Component</h3>
<div>parent: before</div>
${ctx.childCtx(@`
    <div>slot-content from parent. Greeting: ${ctx.greeting()}</div>
`)}
<div>parent: after</div>
