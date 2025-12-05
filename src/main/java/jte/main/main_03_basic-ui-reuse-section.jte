@import org.svenehrke.demo.web.pages.InclusionPageComponent

<section class="section">
    <h1 class="title">Basic UI Reuse Patterns</h1>
    <h2 class="subtitle">for reusable UI parts and components</h2>

    <h6 class="subtitle is-6">Plain JTE Template Files</h6>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.maincard(
            url = InclusionPageComponent.URL,
            title = @`JTE template<br>with simple parameters`,
            content = @`Recommended for most use cases.`
            )

            @template.jte.maincard(
            url = InclusionPageComponent.URL,
            title = @`JTE template<br>with slot parameters`,
            content = @`Recommended for most use cases.`
            )

        </div>
    </div>
</section>
