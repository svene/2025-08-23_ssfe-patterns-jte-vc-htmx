@import gg.jte.Content
@import org.svenehrke.demo.web.pages.InsertionPageComponent
@import org.svenehrke.demo.web.pages.ParentPageComponent
@import org.svenehrke.demo.web.pages.ComponentForwarderPageComponent

@param String selectedMenu = "info"
@param Content content

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>Application/Page Patterns</title>
	<script src="/webjars/htmx.org/dist/htmx.js"></script>
    <link rel="stylesheet" href="/webjars/bulma/css/bulma.css"/>
    <link rel="stylesheet" href="/main.css"/>
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
                <a class="navbar-item ${ ("insertion".equals(selectedMenu)) ? "is-selected" : ""} " href="${InsertionPageComponent.URL}">Insertion Pattern</a>
                <a class="navbar-item ${ ("parentchild".equals(selectedMenu)) ? "is-selected" : ""} " href="${ParentPageComponent.URL}">Parent-Child Pattern</a>
                <a class="navbar-item ${ ("forwarder".equals(selectedMenu)) ? "is-selected" : ""} " href="${ComponentForwarderPageComponent.URL}">Component-Forwarder Pattern</a>
            </div>
        </div>
    </nav>

    <div class="p-1 mt-1 area-border">
        ${content}
    </div>
</div>

</body>
</html>
