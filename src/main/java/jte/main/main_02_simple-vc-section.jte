@import org.svenehrke.demo.web.simplevcdemos.page.Page
@import org.svenehrke.demo.web.simplevcdemos.apppageincl.PageWithComponent
@import org.svenehrke.demo.web.simplevcdemos.apppageinclparams.AppPageInclParams

<section class="section">
    <h1 class="title">Simple View Components</h1>
    <h2 class="subtitle">Application Pages using View Components</h2>

    <div class="fixed-grid">
        <div class="grid">
            @template.jte.maincard(
            url = Page.URL,
            title = @`Basic`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PageWithComponent.URL,
            title = @`With component`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = AppPageInclParams.URL,
            title = @`Component<br>with parameters`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>

