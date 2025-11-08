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
	<script src="/webjars/htmx.org/2.0.4/dist/htmx.js"></script>
<%--    <link rel="stylesheet" href="/webjars/bulma/css/bulma.css"/>--%>
    <link rel="stylesheet" href="/webjars/bulma/1.0.4/css/bulma.css"/>
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


<nav>
    <a href="${InjectionPageComponent.URL}">Injection-Page</a> |
    <a href="${InclusionPageComponent.URL}">Inclusion-Page</a> |
    <a href="${InsertionPageComponent.URL}">Insertion-Page</a> |
    <a href="${ParentPageComponent.URL}">Parent-Child-Page</a> |
    <a href="${ComponentForwarderPageComponent.URL}">Component-Forwarder-Page</a> |
</nav>
		${content}
</body>

<footer>Footer</footer>
</html>
