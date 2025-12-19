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
<div class="pagecontent">
<h1>Application Page</h1>

${new HelloWorld.Ctx()} <%-- include the View Component (variant 1) --%> <%-- TODO: make sure this is shown only once --%>
${HelloWorld.ctx()} <%-- include the View Component (variant 2) --%>

${new PageWithComponentCode.Ctx()}

</div>
</body>
</html>
