@import org.svenehrke.demo.web.pages.InjectionPageComponent

@param InjectionPageComponent.Ctx ctx

<!--
    SSFE-PATTERN: Template-Injection:
    the component is injected into the layout via the 'content' parameter
 -->
@template.jte.layout(
content = @`
    <h4 class="subtitle is-4">Injection-Page Template Pattern</h4>

            <div class="content">
                <p>${ctx.greeting()}</p>
                <p>The content of this page is injected into the page-layout.</p>
                <p>Note: not this component uses the injection pattern but the layout component.</p>
            </div>

`)
