<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>
<body class="page">

<div class="pagecontent">

<h1>Page with Nested Components</h1>

@template.jte.components.helloworldcontent(
  greetingText = @` <%-- outer template --%>
    <p>before nested content</p>
    @template.jte.components.helloworldcontent(
      greetingText = @` <%-- nested template --%>
        <p>NESTED CONTENT</p>
    `)
    <p>after nested content</p>
  `)
@template.jte.plainjte.page05nested_code()

</div>

</body>
</html>
