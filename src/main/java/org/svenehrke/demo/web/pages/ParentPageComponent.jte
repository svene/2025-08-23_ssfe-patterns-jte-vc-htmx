@import org.svenehrke.demo.web.components.parentchild.ParentComponent
@import org.svenehrke.demo.web.pages.ParentPageComponent

@param ParentPageComponent.Ctx ctx

@template.jte.layout(
content = @`
<h3>Parent-Page-Component</h3>

    ${new ParentComponent.Ctx("hello")}
`)
