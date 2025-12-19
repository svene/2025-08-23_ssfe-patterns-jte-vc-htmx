@import org.svenehrke.demo.web.p02simplevcdemos.page02withcomponent.HelloWorld
@import org.svenehrke.demo.web.p02simplevcdemos.page02withcomponent.PageWithComponentCode

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Page with Component</title>
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body class="page">
<div>
<h1>Page with Component</h1>

${new HelloWorld.Ctx()}

${new PageWithComponentCode.Ctx()}

</div>
</body>
</html>
