@import org.svenehrke.demo.web.pages.InclusionPageComponent
@import org.svenehrke.demo.web.HelloWorldController

<section class="section">
    <h1 class="title">Basic UI Reuse Patterns</h1>
    <h2 class="subtitle">for reusable UI parts and components</h2>

    <h6 class="subtitle is-6">Plain JTE Template Files</h6>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.maincard(
            url = HelloWorldController.URL,
            title = @`JTE template`,
            content = @`Plain template via controller`
            )

            @template.jte.maincard(
            url = InclusionPageComponent.URL,
            title = @`JTE template<br>with simple parameters`,
            content = @`Recommended for most use cases.`
            )

            @template.jte.maincard(
            url = InclusionPageComponent.URL,
            title = @`JTE template with slot parameters`,
            content = @`Recommended for most use cases.`
            )

            @template.jte.maincard(
            url = InclusionPageComponent.URL,
            title = @`JTE template<br>with TODO`,
            content = @`Recommended for most use cases.`
            )

            <h6 class="subtitle is-6">Components</h6>

        </div>
    </div>
</section>
