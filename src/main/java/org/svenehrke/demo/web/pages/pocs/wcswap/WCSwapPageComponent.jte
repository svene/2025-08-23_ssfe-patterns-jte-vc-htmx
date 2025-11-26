@import org.svenehrke.demo.web.pages.pocs.wcswap.WCSwapPageComponent

@param WCSwapPageComponent.Ctx ctx

<!-- SSFE-PATTERN: Template-Injection -->
@template.jte.simplepagelayout(
content = @`
    <div class="is-flex is-justify-content-space-around p-1">

        <%-- Application: --%>
        <div class="p-1">
            <h3>WC Swap Page</h3>
        </div>
    </div>


`)
