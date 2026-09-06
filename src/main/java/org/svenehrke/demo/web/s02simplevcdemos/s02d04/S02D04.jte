@import org.svenehrke.demo.web.s02simplevcdemos.s02d04.HelloWorldContent
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body class="page">
<div>
    <%-- docs:start page --%>
    <h1>Page with ContentParams-Component</h1>

    ${new HelloWorldContent.Ctx(@` <%-- include HTML content --%>
        How are you?<br>
        Hopefully <strong>very well</strong>.<br>
        <p>See you soon!</p>
    `)}
    <%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/technologies/01_jte-vc/s02/#4-content-parameter">Docs</a>

</div>
</body>
</html>
