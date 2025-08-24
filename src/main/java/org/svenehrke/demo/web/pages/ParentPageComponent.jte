@import org.svenehrke.demo.web.pages.ParentPageComponent

@param ParentPageComponent.Ctx ctx

@template.jte.layout(
content = @`
<h3>Parent-Page-Component</h3>
    <div>parent: before</div>
    ${ctx.childCtx(@`
        <div>slot-content from parent. Greeting: ${ctx.greeting()}</div>
    `)}
    <div>parent: after</div>
`)
