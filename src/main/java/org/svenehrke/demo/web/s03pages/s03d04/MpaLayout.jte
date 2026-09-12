@import org.svenehrke.demo.web.s03pages.s03d04.MpaLayout
@import org.svenehrke.demo.web.s03pages.s03d04.S03D04P1
@import org.svenehrke.demo.web.s03pages.s03d04.S03D04P2

<%-- docs:start page --%>
@param MpaLayout.Ctx ctx

<!DOCTYPE html>
<html lang="en">
<%-- docs:end page --%>
<head>
    <meta charset="UTF-8">
    <title>Application/Page Patterns</title>
    <script src="/js/htmx.org/4.0.0/htmx.js"></script>
    <link rel="stylesheet" href="/css/bulma/1.0.4/bulma.min.css"/>
    <link rel="stylesheet" href="/main.css"/>
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body>
<section class="hero is-link">
    <div class="hero-body">
        <p class="title">Template Based Application/Page Patterns</p>
        <p class="subtitle">Hypermedia-Patterns Demo with JTE-VC</p>
    </div>
</section>

<div class="container mt-1">
    <%-- docs:start page --%>
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item ${ ("page1".equals(ctx.selectedMenu())) ? "is-selected" : ""} " href="${S03D04P1.URL}">Page 1</a>
                <a class="navbar-item ${ ("page2".equals(ctx.selectedMenu())) ? "is-selected" : ""} " href="${S03D04P2.URL}">Page 2</a>
            </div>
        </div>
    </nav>
    <div class="p-1 mt-1 area-border" style="min-height: 500px">
        ${ctx.content()}
    </div>
    <%-- docs:end page --%>

    <hr>
    <a href="http://localhost:4321/technologies/01_jte-vc/s03/#4-mpa-example">Docs</a>

</div>
<%-- docs:start page --%>
</body>
</html>
<%-- docs:end page --%>
