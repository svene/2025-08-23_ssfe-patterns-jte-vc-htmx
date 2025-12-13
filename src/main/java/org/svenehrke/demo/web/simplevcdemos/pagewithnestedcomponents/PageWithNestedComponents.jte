@import org.svenehrke.demo.web.simplevcdemos.pagewithnestedcomponents.HelloWorldNestedContent
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/demopage.css"/>
</head>

<body class="page">
<div class="pagecontent">
    <h1>Application Page</h1>

    ${new HelloWorldNestedContent.Ctx(@`
        <p>before nested content</p>

        ${new HelloWorldNestedContent.Ctx(@`
            <p>NESTED CONTENT</p>
        `)}
        <p>after nested content</p>
    `)}
</div>
</body>
</html>
