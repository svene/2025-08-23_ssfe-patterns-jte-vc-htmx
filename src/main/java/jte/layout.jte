@import gg.jte.Content
@import org.svenehrke.demo.web.pages.Page1Component
@import org.svenehrke.demo.web.pages.Page2Component

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
    <a href="${Page1Component.URL}">Page 1</a>
    <a href="${Page2Component.URL}">Page 2</a>
</nav>
		${content}
</body>

<footer>Footer</footer>
</html>
