@import gg.jte.Content
@import org.svenehrke.demo.web.pages.TemplateInfoPageComponent
@import org.svenehrke.demo.web.pages.InjectionPageComponent
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
                <a class="navbar-item ${ ("info".equals(selectedMenu)) ? "is-selected" : ""} " href="${TemplateInfoPageComponent.URL}">Info</a>
                <a class="navbar-item ${ ("injection".equals(selectedMenu)) ? "is-selected" : ""} " href="${InjectionPageComponent.URL}">Injection Page</a>
                <a class="navbar-item ${ ("insertion".equals(selectedMenu)) ? "is-selected" : ""} " href="${InsertionPageComponent.URL}">Insertion Page</a>
                <a class="navbar-item ${ ("parentchild".equals(selectedMenu)) ? "is-selected" : ""} " href="${ParentPageComponent.URL}">Parent-Child-Page</a>
                <a class="navbar-item ${ ("forwarder".equals(selectedMenu)) ? "is-selected" : ""} " href="${ComponentForwarderPageComponent.URL}">Component-Forwarder-Page</a>
            </div>
        </div>
    </nav>

    <div class="p-1 mt-1" style="border-color: var(--bulma-info); border-style: solid; border-radius: 4px;">
        ${content}
    </div>

<%--
    <div class="p-1 has-background-info">
        ${content}
    </div>

--%>
<%--
    <div class="columns">
        <div class="column is-2">
            <aside class="menu">
                <p class="menu-label">Template Patterns</p>
                <ul class="menu-list">
                    <li><a href="${InjectionPageComponent.URL}">Injection-Page</a></li>
                    <li><a href="${InsertionPageComponent.URL}">Insertion-Page</a></li>
                    <li><a href="${ParentPageComponent.URL}">Parent-Child-Page</a></li>
                    <li><a href="${ComponentForwarderPageComponent.URL}">Component-Forwarder-Page</a></li>
                </ul>
            </aside>
        </div>

        <div class="column is-10">
            <div class="card">
                <div class="card-content">
                    ${content}
                </div>
            </div>

            <footer class="has-text-centered">Footer</footer>
        </div>
    </div>
--%>



</div>

</body>
</html>
