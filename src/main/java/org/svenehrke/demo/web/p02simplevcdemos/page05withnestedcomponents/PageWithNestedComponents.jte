@import org.svenehrke.demo.web.p02simplevcdemos.page05withnestedcomponents.HelloWorldNestedComponents
@import org.svenehrke.demo.web.p02simplevcdemos.page05withnestedcomponents.PageWithNestedComponentsCode
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body class="page">
<div>
    <h1>Page with Nested Components</h1>

    ${new HelloWorldNestedComponents.Ctx(@`
        <p>before nested content</p>
        ${new HelloWorldNestedComponents.Ctx(@`
            <p>NESTED CONTENT</p>
        `)}
        <p>after nested content</p>
    `)}
    ${new PageWithNestedComponentsCode.Ctx()}
</div>
</body>
</html>
