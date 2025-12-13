@import org.svenehrke.demo.web.simplevcdemos.page.Page
@import org.svenehrke.demo.web.simplevcdemos.apppageincl.PageWithComponent
@import org.svenehrke.demo.web.simplevcdemos.pagewithcontentparamscomponent.PageWithContentParamsComponent
@import org.svenehrke.demo.web.simplevcdemos.pagewithnestedcomponents.PageWithNestedComponents
@import org.svenehrke.demo.web.simplevcdemos.pagewithparamscomponent.PageWithParamsComponent

<section class="section">
    <h1 class="title">Simple Pages using View Components</h1>
    <h2 class="subtitle">For usecases with business logic. VCs combine JTE and Code in pairs.
    </h2>

    <div class="fixed-grid">
        <div class="grid">
            @template.jte.maincard(
            url = Page.URL,
            title = @`Basic VC Page`,
            subtitle = @`made using a View Component`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PageWithComponent.URL,
            title = @`Basic VC Page`,
            subtitle = @`using a VC component`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PageWithParamsComponent.URL,
            title = @`Page and Component`,
            subtitle = @`with parameters`,
            recommendation = @`When page and/or component need parameters`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PageWithContentParamsComponent.URL,
            title = @`Content parameter`,
            subtitle = @`passed from page to component`,
            recommendation = @`When html needs to be passed into component`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PageWithNestedComponents.URL,
            title = @`Nested components`,
            subtitle = @`or: template in template`,
            recommendation = @`if you need components in content-parameters`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>

