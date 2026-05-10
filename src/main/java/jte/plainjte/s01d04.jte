<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>
<body class="page">

<div>
<%-- docs:start page --%>
<h1>Page with ContentParams-Component</h1>

@template.jte.components.helloworldcontent(
  greetingText = @` <%-- include HTML content --%>
    How are you?<br>
    Hopefully <strong>very well</strong>.<br>
    <p>See you soon!</p>
`
)
<%-- docs:end page --%>
<hr>
<a href="http://localhost:4321/demos/s01/#4-content-parameter">Docs</a>

</div>

</body>
</html>
