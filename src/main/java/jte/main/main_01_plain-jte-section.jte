@import org.svenehrke.demo.web.PlainJTEController

<section class="section">
    <h1 class="title">Plain JTE Template Files</h1>
    <h2 class="subtitle">Application Pages via controller</h2>

    <div class="fixed-grid">
        <div class="grid">
            @template.jte.maincard(
            url = PlainJTEController.APP_PAGE_URL,
            title = @`Basic`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PlainJTEController.APP_PAGE_INCL_URL,
            title = @`With component`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PlainJTEController.APP_PAGE_INCL_PARAMS_URL,
            title = @`Component<br>with parameters`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PlainJTEController.APP_PAGE_PASS_CONTENT_URL,
            title = @`Component<br>with content parameter`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>

