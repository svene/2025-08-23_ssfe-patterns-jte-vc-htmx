@import gg.jte.Content

@param Content content
@param Content xhead = @``

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>Application/Page Patterns</title>
	<script src="/js/htmx.org/4.0.0/htmx.js"></script>
    <link rel="stylesheet" href="/css/bulma/1.0.4/bulma.min.css"/>
    <link rel="stylesheet" href="/main.css"/>
    ${xhead}
</head>

<body>
<div class="container mt-1">

    <div class="p-1 mt-1">
        ${content}
    </div>
</div>

</body>
</html>
