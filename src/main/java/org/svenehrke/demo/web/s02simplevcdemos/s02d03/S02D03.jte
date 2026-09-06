@import org.svenehrke.demo.web.s02simplevcdemos.s02d03.HelloWorldParams

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body class="page">
<div>
<%-- docs:start page --%>
<h1>Page with Params-Component</h1>

${new HelloWorldParams.Ctx("hello", "world")}
<%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/technologies/01_jte-vc/s02/#3-parameters">Docs</a>
</div>
</body>
</html>
