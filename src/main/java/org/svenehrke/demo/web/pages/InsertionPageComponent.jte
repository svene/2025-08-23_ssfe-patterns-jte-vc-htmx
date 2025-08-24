@import org.svenehrke.demo.web.pages.InsertionPageComponent
@import org.svenehrke.demo.web.components.InsertableComponent

@param InsertionPageComponent.Ctx ctx

<!-- SSFE-PATTERN: Template-Injection -->
@template.jte.layout(
content = @`
<h3>Insertion-Page-Component</h3>

<div>
    ${new InsertableComponent.Ctx("hello")}
</div>
`)
