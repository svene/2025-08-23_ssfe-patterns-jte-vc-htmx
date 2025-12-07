@import org.svenehrke.demo.web.simplevcdemos.pagewithcontentparamscomponent.HelloWorldContent
@import org.svenehrke.demo.web.simplevcdemos.pagewithcontentparamscomponent.PageWithContentParamsComponentCode
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/demopage.css"/>
</head>

<body class="page">
<div class="pagecontent">
    <h1>Application Page</h1>

    ${new HelloWorldContent.Ctx(@`
        How are you?<br>
        Hopefully <strong>very well</strong>.<br>
        <p>See you soon!</p>
    `)}

    ${new PageWithContentParamsComponentCode.Ctx()}

</div>
</body>
</html>
