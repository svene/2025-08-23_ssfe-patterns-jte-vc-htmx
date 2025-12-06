@import org.svenehrke.demo.web.PlainJTEController

<section class="section">
    <h1 class="title">Plain JTE Template Files</h1>
    <h2 class="subtitle">via controller</h2>

    <div class="fixed-grid">
        <div class="grid">
            @template.jte.maincard(
            url = PlainJTEController.APP_PAGE_URL,
            title = @`Application Page`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PlainJTEController.APP_PAGE_INCL_URL,
            title = @` Application Page using a partial`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PlainJTEController.APP_PAGE_INCL_PARAMS_URL,
            title = @` Application Page using a partial<br>with parameters`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PlainJTEController.APP_PAGE_PASS_CONTENT_URL,
            title = @` Application Page using a partial<br>and pass content`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>

