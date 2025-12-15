@import org.svenehrke.demo.web.p02simplevcdemos.page02withcomponent.HelloWorld
@import org.svenehrke.demo.web.p02simplevcdemos.page02withcomponent.PageWithComponentCode

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body class="page">
<div class="pagecontent">
<h1>Application Page</h1>

${new HelloWorld.Ctx()}
${HelloWorld.ctx()}

${new PageWithComponentCode.Ctx()}

</div>
</body>
</html>
