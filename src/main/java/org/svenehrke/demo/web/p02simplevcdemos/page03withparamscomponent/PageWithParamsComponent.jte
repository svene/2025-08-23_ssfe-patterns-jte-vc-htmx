@import org.svenehrke.demo.web.p02simplevcdemos.page03withparamscomponent.HelloWorldParams
@import org.svenehrke.demo.web.p02simplevcdemos.page03withparamscomponent.PageWithParamsComponentCode

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>

<body class="page">
<div class="pagecontent">
<h1>Application Page</h1>

${new HelloWorldParams.Ctx("hello", "world")}
${HelloWorldParams.ctx("hello", "world")}

${new PageWithParamsComponentCode.Ctx()}

</div>
</body>
</html>
