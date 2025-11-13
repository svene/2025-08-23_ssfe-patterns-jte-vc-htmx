@import gg.jte.Content
@import org.svenehrke.demo.web.pages.InclusionPageComponent
@import org.svenehrke.demo.web.pages.InjectionPageComponent

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

    <div class="fixed-grid">
        <div class="grid">

            <div class="cell is-flex is-justify-content-center is-align-items-center">
                <div class="card" style="width: 50%; height: 100%">
                    <a href="${InjectionPageComponent.URL}" target="_blank">
                        <header class="card-header">
                            <p class="card-header-title">Template Pattern</p>
                        </header>
                        <div class="card-content">
                            Recommended for most use cases.
                        </div>
                    </a>
                </div>
            </div>
            <div class="cell is-flex is-justify-content-center is-align-items-center">
                <div class="card" style="width: 50%; height: 100%">
                    <a href="${InclusionPageComponent.URL}" target="_blank">
                        <header class="card-header">
                            <p class="card-header-title">Include Pattern</p>
                        </header>
                        <div class="card-content">
                            Recommended if default sections of Template Pattern are not appropriate for the use case.
                        </div>
                    </a>
                </div>
            </div>

            <div class="cell is-flex is-justify-content-center is-align-items-center">
                <div class="card" style="width: 50%; height: 100%">
                    <a href="${InjectionPageComponent.URL}" target="_blank">
                        <header class="card-header">
                            <p class="card-header-title">Template Pattern</p>
                        </header>
                        <div class="card-content">
                            Recommended for most use cases.
                        </div>
                    </a>
                </div>
            </div>
            <div class="cell is-flex is-justify-content-center is-align-items-center">
                <div class="card" style="width: 50%; height: 100%">
                    <a href="${InclusionPageComponent.URL}" target="_blank">
                        <header class="card-header">
                            <p class="card-header-title">Include Pattern</p>
                        </header>
                        <div class="card-content">
                            Recommended if default sections of Template Pattern are not appropriate for the use case.
                        </div>
                    </a>
                </div>
            </div>


        </div>
    </div>
</div>

</body>
</html>
