@import org.svenehrke.demo.web.pages.InjectionPageComponent

@param InjectionPageComponent.Ctx ctx

<!--
    SSFE-PATTERN: Template-Injection:
    the component is injected into the layout via the 'content' parameter
 -->
@template.jte.layout(
selectedMenu = "injection",
content = @`
    <h4 class="subtitle is-4">${ctx.greeting()}</h4>
`)
