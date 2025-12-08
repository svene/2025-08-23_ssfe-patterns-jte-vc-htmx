@import org.svenehrke.demo.web.pages.CustomPageWithParam

@param CustomPageWithParam.Ctx ctx
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
        <h1 class="title">Custom Page with Param says: ${ctx.greeting()}</h1>
    </div>
</div>

</body>
</html>
