@import org.svenehrke.demo.web.pages.Page1Component

@param Page1Component.Ctx ctx

<%-- SSFE-PATTERN: Template-Injection --%>
@template.jte.layout(
content = @`
<h3>Page-1-Component</h3>

<div>${ctx.greeting()}</div>
`)
