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
        <h1 class="title">Basic UI Reuse Patterns</h1>
        <h2 class="subtitle">
            Basic Patterns for reusable UI parts and components
        </h2>

        <div class="fixed-grid">
            <div class="grid">

                @template.jte.maincard(
                    url = InjectionPageComponent.URL,
                    title = @`JTE template`,
                    content = @`Recommended for most use cases.`
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
