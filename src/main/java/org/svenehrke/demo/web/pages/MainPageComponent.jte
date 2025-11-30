@import org.svenehrke.demo.web.ApplicationPageController
@import org.svenehrke.demo.web.HelloWorldController
@import org.svenehrke.demo.web.pages.InclusionPageComponent
@import org.svenehrke.demo.web.pages.InjectionPageComponent
@import org.svenehrke.demo.web.pages.pocs.wcswap.WCSwapPageComponent

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SSFE-Patterns Demo with JTE-VC</title>
    <script src="/webjars/htmx.org/dist/htmx.js"></script>
    <link rel="stylesheet" href="/webjars/bulma/css/bulma.css"/>
</head>

<body>
<div class="container">
    <section class="section">
        <div class="container">
            <h1 class="title">SSFE-Patterns Demo with JTE-VC</h1>
            <p class="subtitle">
                SSFE-Patterns Demo with JTE-VC
            </p>
        </div>
    </section>

    <section class="section">
        <h1 class="title">Plain JTE Template Files</h1>
        <h2 class="subtitle">via controller</h2>

        <div class="fixed-grid">
            <div class="grid">

                @template.jte.maincard(
                url = ApplicationPageController.APP_PAGE_URL,
                title = @`Application Page`,
                content = @`Demo...`
                )

                @template.jte.maincard(
                url = ApplicationPageController.APP_PAGE_INCL_URL,
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

    <section class="section">
        <h1 class="title">Basic UI Reuse Patterns</h1>
        <h2 class="subtitle">for reusable UI parts and components</h2>

        <h6 class="subtitle is-6">Plain JTE Template Files</h6>

        <div class="fixed-grid">
            <div class="grid">


                @template.jte.maincard(
                    url = "/helloworld",
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

    <section class="section">
        <h1 class="title">Application/Page Patterns</h1>
        <h2 class="subtitle">
            Patterns to build applications with one or multiple pages
        </h2>

        <div class="fixed-grid">
            <div class="grid">

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

    <section class="section">
        <h1 class="title">Experiments</h1>
        <h2 class="subtitle">
            Some PoCs
        </h2>

        <div class="fixed-grid">
            <div class="grid">

                @template.jte.maincard(
                url = WCSwapPageComponent.URL,
                title = @`Swap Webcomponent`,
                content = @`Investigate possible rendering issues`
                )

            </div>
        </div>
    </section>


</div>

</body>
</html>
