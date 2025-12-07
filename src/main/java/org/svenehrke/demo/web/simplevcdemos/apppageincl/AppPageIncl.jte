@import org.svenehrke.demo.web.simplevcdemos.apppageincl.HelloWorld
@import org.svenehrke.demo.web.simplevcdemos.apppageincl.AppPageInclCode

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/demopage.css"/>
</head>

<body class="page">
<div class="pagecontent">
<h1>Application Page</h1>

${new HelloWorld.Ctx()}
${HelloWorld.ctx()}

${new AppPageInclCode.Ctx()}

</div>
</body>
</html>
