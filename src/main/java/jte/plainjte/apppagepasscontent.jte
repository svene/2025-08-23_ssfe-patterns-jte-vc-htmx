<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/demopage.css"/>
</head>
<body class="page">

<div class="pagecontent">

<h1>Application Page</h1>

@template.jte.components.helloworldcontent(
  greetingText = @`
    How are you?<br>
    Hopefully <strong>very well</strong>.<br>
    <p>See you soon!</p>
`
)
@template.jte.plainjte.apppagepasscontent_code()

</div>

</body>
</html>
