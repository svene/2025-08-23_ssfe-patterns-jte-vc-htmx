@import org.svenehrke.demo.web.p02simplevcdemos.page01.Page
@import org.svenehrke.demo.web.p02simplevcdemos.page02withcomponent.PageWithComponent
@import org.svenehrke.demo.web.p02simplevcdemos.page03withparamscomponent.PageWithParamsComponent
@import org.svenehrke.demo.web.p02simplevcdemos.page04withcontentparamscomponent.PageWithContentParamsComponent
@import org.svenehrke.demo.web.p02simplevcdemos.page05withnestedcomponents.PageWithNestedComponents

<section class="section">
    <h1 class="title">Simple Pages using View Components</h1>
    <h2 class="subtitle">For usecases with business logic. VCs combine JTE and Code in pairs.
    </h2>

    <div class="fixed-grid">
        <div class="grid">
            @template.jte.main.maincard(
            url = Page.URL,
            title = @`Basic VC Page`,
            subtitle = @`made using a View Component`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = PageWithComponent.URL,
            title = @`Basic VC Page`,
            subtitle = @`using a VC component`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = PageWithParamsComponent.URL,
            title = @`Page and Component`,
            subtitle = @`with parameters`,
            recommendation = @`When page and/or component need parameters`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = PageWithContentParamsComponent.URL,
            title = @`Content parameter`,
            subtitle = @`passed from page to component`,
            recommendation = @`When html needs to be passed into component`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = PageWithNestedComponents.URL,
            title = @`Nested components`,
            subtitle = @`or: template in template`,
            recommendation = @`if you need components in content-parameters`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>

