@import org.svenehrke.demo.web.pages.InsertionPageComponent

@param InsertionPageComponent.Ctx ctx

<!-- SSFE-PATTERN: Template-Injection -->
@template.jte.layout(
content = @`
<h3>Insertion-Page-Component</h3>

<div>${ctx.greeting()}</div>
`)
