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

    @template.jte.main.main_01_plain-jte-section()
    @template.jte.main.main_02_simple-vc-section()
    @template.jte.main.main_04_applicationpage-section()
    @template.jte.main.main_03_basic-ui-reuse-section()
    @template.jte.main.main_05_experiments-section()

</div>

</body>
</html>
