<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Server Side Frontend Patterns</title>
    <script src="/js/htmx.org/4.0.0/htmx.js"></script>
    <link rel="stylesheet" href="/webjars/bulma/1.0.4/css/bulma.css"/>
</head>

<body>
<div class="container">
    <section class="section">
        <div class="container">
            <h1 class="title">Server Side Frontend Patterns</h1>
            <p class="subtitle">with plain JTE and with ViewComponents</p>
        </div>
    </section>

    @template.jte.main.main_01_plain-jte-section()
    @template.jte.main.main_02_simple-vc-section()
    @template.jte.main.main_03_pages-section()
    @template.jte.main.main_04_ui-patterns-section()
    @template.jte.main.main_05_htmx-patterns-section()
    @template.jte.main.main_09_experiments-section()

</div>

</body>
</html>
