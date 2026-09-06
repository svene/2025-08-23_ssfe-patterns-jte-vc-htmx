<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>
<body class="page">

<div>
<%-- docs:start page --%>
<h1>Page with Nested Components</h1>

@template.jte.components.helloworldcontent(
  greetingText = @` <%-- Outer template --%>
    <p>before nested content</p>
    @template.jte.components.helloworldcontent(
      greetingText = @` <%-- Nested template --%>
        <p>NESTED CONTENT</p>
    `)
    <p>after nested content</p>
  `)
<%-- docs:end page --%>
<hr>
<a href="http://localhost:4321/technologies/01_jte-vc/s01/#5-nested-components">Docs</a>

</div>

</body>
</html>
