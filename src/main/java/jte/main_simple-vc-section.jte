@import org.svenehrke.demo.web.ApplicationPageController
@import org.svenehrke.demo.web.simplevcdemos.applicationpage.ApplicationPageComponent
@import org.svenehrke.demo.web.simplevcdemos.applicationpageincl.ApplicationPageInclComponent

<section class="section">
    <h1 class="title">Simple View Components</h1>
    <h2 class="subtitle">View Component Variants of the plain JTE Template Files Demos</h2>

    <div class="fixed-grid">
        <div class="grid">
            @template.jte.maincard(
            url = ApplicationPageComponent.URL,
            title = @`Application Page`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = ApplicationPageInclComponent.URL,
            title = @` Application Page using a partial`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = ApplicationPageController.APP_PAGE_INCL_PARAMS_URL,
            title = @` Application Page using a partial<br>with parameters`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>

