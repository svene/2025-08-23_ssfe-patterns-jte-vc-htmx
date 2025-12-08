@import org.svenehrke.demo.web.pages.BasicPage
@import org.svenehrke.demo.web.pages.BasicPageWithParam
@import org.svenehrke.demo.web.pages.InclusionPageComponent
@import org.svenehrke.demo.web.pages.InjectionPageComponent

<section class="section">
    <h1 class="title">Application/Page Patterns</h1>
    <h2 class="subtitle">
        Patterns to build applications with one or multiple pages
    </h2>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.maincard(
            url = BasicPage.URL,
            title = @`Page Template<br>Basic Page`,
            content = @`TODO`
            )

            @template.jte.maincard(
            url = BasicPageWithParam.URL,
            title = @`Page Template<br>Basic Page with Param`,
            content = @`TODO`
            )

            @template.jte.maincard(
            url = InjectionPageComponent.URL,
            title = @`Injection Pattern`,
            content = @`Recommended for most use cases`
            )

            @template.jte.maincard(
            url = InclusionPageComponent.URL,
            title = @`Include Pattern`,
            content = @`Recommended if default sections of Template Pattern are not appropriate for the use case.`
            )

        </div>
    </div>
</section>
