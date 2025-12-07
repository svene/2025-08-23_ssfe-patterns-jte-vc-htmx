@import org.svenehrke.demo.web.simplevcdemos.apppageinclparams.HelloWorldParams
@import org.svenehrke.demo.web.simplevcdemos.apppageinclparams.AppPageInclParamsCode

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/demopage.css"/>
</head>

<body class="page">
<div class="pagecontent">
<h1>Application Page</h1>

${new HelloWorldParams.Ctx("hello", "world")}
${HelloWorldParams.ctx("hello", "world")}

${new AppPageInclParamsCode.Ctx()}

</div>
</body>
</html>
