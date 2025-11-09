@import gg.jte.Content
@import org.svenehrke.demo.web.pages.InclusionPageComponent
@import org.svenehrke.demo.web.pages.InjectionPageComponent
@import org.svenehrke.demo.web.pages.InsertionPageComponent
@import org.svenehrke.demo.web.pages.ParentPageComponent
@import org.svenehrke.demo.web.pages.ComponentForwarderPageComponent

@param Content content

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>SSFE-Patterns Demo with JTE-VC</title>
	<script src="/webjars/htmx.org/dist/htmx.js"></script>
    <link rel="stylesheet" href="/webjars/bulma/css/bulma.css"/>
</head>

<body>
<section class="section">
    <div class="container">
        <h1 class="title">SSFE-Patterns Demo with JTE-VC</h1>
        <p class="subtitle">
            SSFE-Patterns Demo with JTE-VC
        </p>
    </div>
</section>

<div class="container">
    <div class="columns">
        <div class="column is-2">
            <!-- See https://bulma.io/documentation/components/menu/ -->
            <aside class="menu">
                <p class="menu-label">Template Patterns</p>
                <ul class="menu-list">
                    <li><a href="${InjectionPageComponent.URL}">Injection-Page</a></li>
                    <li><a href="${InclusionPageComponent.URL}">Inclusion-Page</a></li>
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
</div>

</body>
</html>
