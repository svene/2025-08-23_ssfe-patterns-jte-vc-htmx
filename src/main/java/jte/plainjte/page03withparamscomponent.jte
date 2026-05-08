<%-- docs:start page03 --%>
<%-- from model, passed by controller: --%>
@param String greetee
<%-- docs:end page03 --%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>
<body class="page">

<div>
<%-- docs:start page03 --%>
<h1>Page with Params-Component</h1>

<%--
first parameter passed literally from this template.
Second parameter coming in from controller through Model and passed to included template:
--%>
@template.jte.components.helloworldparams(
  greeting = "Hey",
  greetee = greetee
)
<%-- docs:end page03 --%>
<hr>
<a href="http://localhost:4321/demos/s01/#3-page-and-component-with-parameters">Docs</a>

</div>
</body>
</html>
