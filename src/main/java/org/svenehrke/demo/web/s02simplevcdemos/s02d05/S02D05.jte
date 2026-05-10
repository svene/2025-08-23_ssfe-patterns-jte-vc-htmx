@import org.svenehrke.demo.web.s02simplevcdemos.s02d05.HelloWorldNestedComponents
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body class="page">
<div>
    <%-- docs:start page --%>
    <h1>Page with Nested Components</h1>

    ${new HelloWorldNestedComponents.Ctx(@`
        <p>before nested content</p>
        ${new HelloWorldNestedComponents.Ctx(@`
            <p>NESTED CONTENT</p>
        `)}
        <p>after nested content</p>
    `)}
    <%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/demos/s02/#5-nested-components">Docs</a>
</div>
</body>
</html>
