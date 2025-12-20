@import org.svenehrke.demo.web.p03pages.p04mpa.MpaLayout
@import org.svenehrke.demo.web.p03pages.p04mpa.MpaPage1
@import org.svenehrke.demo.web.p03pages.p04mpa.MpaPage2
@import org.svenehrke.demo.web.p03pages.p04mpa.MpaCode

@param MpaLayout.Ctx ctx

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Application/Page Patterns</title>
    <script src="/webjars/htmx.org/dist/htmx.js"></script>
    <link rel="stylesheet" href="/webjars/bulma/css/bulma.css"/>
    <link rel="stylesheet" href="/main.css"/>
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body>
<section class="hero is-link">
    <div class="hero-body">
        <p class="title">Template Based Application/Page Patterns</p>
        <p class="subtitle">SSFE-Patterns Demo with JTE-VC</p>
    </div>
</section>

<div class="container mt-1">
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item ${ ("page1".equals(ctx.selectedMenu())) ? "is-selected" : ""} " href="${MpaPage1.URL}">Page 1</a>
                <a class="navbar-item ${ ("page2".equals(ctx.selectedMenu())) ? "is-selected" : ""} " href="${MpaPage2.URL}">Page 2</a>
            </div>
        </div>
    </nav>

    <div class="p-1 mt-1 area-border" style="min-height: 500px">
        ${ctx.content()}
    </div>

    <hr>
    ${new MpaCode.Ctx()}

</div>

</body>
</html>
