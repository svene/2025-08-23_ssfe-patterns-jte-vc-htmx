@import gg.jte.Content
@import org.svenehrke.demo.web.pages.InclusionPageComponent
@import org.svenehrke.demo.web.pages.InjectionPageComponent

@param Content content

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>SSFE-Patterns Demo with JTE-VC</title>
	<script src="/webjars/htmx.org/2.0.4/dist/htmx.js"></script>
</head>

<body>
<nav>
    <a href="${InjectionPageComponent.URL}">Injection-Page</a>
    <a href="${InclusionPageComponent.URL}">Inclusion-Page</a>
</nav>
		${content}
</body>

<footer>Footer</footer>
</html>
