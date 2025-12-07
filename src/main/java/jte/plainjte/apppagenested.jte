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
    <p>before nested content</p>
    @template.jte.components.helloworldcontent(
      greetingText = @`
        <p>NESTED CONTENT</p>
    `)
    <p>after nested content</p>
  `)
@template.jte.plainjte.apppagenested_code()

</div>

</body>
</html>
