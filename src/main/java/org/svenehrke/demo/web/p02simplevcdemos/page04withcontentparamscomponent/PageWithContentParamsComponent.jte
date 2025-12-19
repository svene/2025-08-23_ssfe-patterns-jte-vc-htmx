@import org.svenehrke.demo.web.p02simplevcdemos.page04withcontentparamscomponent.HelloWorldContent
@import org.svenehrke.demo.web.p02simplevcdemos.page04withcontentparamscomponent.PageWithContentParamsComponentCode
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body class="page">
<div class="pagecontent">
    <h1>Page with ContentParams-Component</h1>

    ${new HelloWorldContent.Ctx(@` <%-- include HTML content --%>
        How are you?<br>
        Hopefully <strong>very well</strong>.<br>
        <p>See you soon!</p>
    `)}

    ${new PageWithContentParamsComponentCode.Ctx()}

</div>
</body>
</html>
