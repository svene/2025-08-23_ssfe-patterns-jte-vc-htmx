@import gg.jte.Content

@param Content content = @``

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Application Page</title>
    <script src="/webjars/htmx.org/dist/htmx.js"></script>
    <link rel="stylesheet" href="/webjars/bulma/css/bulma.css"/>
    <link rel="stylesheet" href="/main.css"/>
</head>

<body>
<div class="container mt-1">

    <div class="p-1 mt-1">
        ${content}
    </div>
</div>

</body>
</html>
