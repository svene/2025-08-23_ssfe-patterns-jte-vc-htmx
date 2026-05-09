@import org.svenehrke.demo.web.p02simplevcdemos.page02withcomponent.HelloWorld

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Page with Component</title>
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body class="page">
<div>
<%-- docs:start page --%>
<h1>Page with Component</h1>

${new HelloWorld.Ctx()}
<%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/demos/s02/#2-vc-page-with-component">Docs</a>

</div>
</body>
</html>
