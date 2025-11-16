@import org.svenehrke.demo.web.pages.InjectionPageComponent

@param InjectionPageComponent.Ctx ctx

<!--
    SSFE-PATTERN: Template-Injection:
    the component is injected into the layout via the 'content' parameter
 -->
@template.jte.layout(
selectedMenu = "injection",
content = @`
    <div class="is-flex is-justify-content-space-around p-1">
        <%-- Explaining code: --%>
        <div>
            <pre>
&#64;template.jte.layout(
content = &#64;&#96; // &lt;-- Inject content into layout
  &lt;p&gt;Hello from Injection-Page&lt;/p&gt;
&#96;)
            </pre>
        </div>

        <%-- Application: --%>
        <div class="area-border p-1">
            <h4 class="subtitle is-4">${ctx.greeting()}</h4>
        </div>
    </div>
`)
