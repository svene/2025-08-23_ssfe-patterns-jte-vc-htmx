@import org.svenehrke.demo.web.pages.InjectionPageComponent

@param InjectionPageComponent.Ctx ctx

<!-- SSFE-PATTERN: Template-Injection -->
@template.jte.layout(
content = @`
<h3>Injection-Page-Component</h3>

<div>${ctx.greeting()}</div>
`)
