@import org.svenehrke.demo.web.pages.InsertionPageComponent
@import org.svenehrke.demo.web.components.InsertableComponent

@param InsertionPageComponent.Ctx ctx

<!-- SSFE-PATTERN: Template-Injection -->
@template.jte.layout(
selectedMenu = "insertion",
content = @`
    <div class="is-flex is-justify-content-space-around p-1">
        <%-- Explaining code: --%>
        <div>
            <pre>
&lt;h3&gt;Insertion-Page-Component&lt;/h3&gt;
&#36;{new InsertableComponent.Ctx("hello")}
            </pre>
        </div>

        <%-- Application: --%>
        <div class="area-border p-1">
            <h3>Insertion-Page-Component</h3>
            <div class="area-border p-1">
                ${new InsertableComponent.Ctx("hello")}
            </div>
        </div>
    </div>


`)
