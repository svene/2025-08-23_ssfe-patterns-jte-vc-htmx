@import org.svenehrke.demo.web.pages.InjectionPageComponent

@param InjectionPageComponent.Ctx ctx

<!--
    SSFE-PATTERN: Template-Injection:
    the component is injected into the layout via the 'content' parameter
 -->
@template.jte.layout(
content = @`
    <h4 class="subtitle is-4">Injection-Page-Component</h4>

    <div class="card">
        <div class="card-content">
            <div class="content">
                <div>${ctx.greeting()}</div>
            </div>
        </div>
    </div>

`)
