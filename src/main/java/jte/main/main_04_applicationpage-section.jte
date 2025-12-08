@import org.svenehrke.demo.web.pages.ContentPage
@import org.svenehrke.demo.web.pages.ContentPageWithParam
@import org.svenehrke.demo.web.pages.CustomPageWithParam
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
            url = ContentPage.URL,
            title = @`Content Page`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = ContentPageWithParam.URL,
            title = @`Content Page with Param`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = org.svenehrke.demo.web.pages.CustomPageWithParam.URL,
            title = @`Custom Page with Param`,
            content = @`Demo...`
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
