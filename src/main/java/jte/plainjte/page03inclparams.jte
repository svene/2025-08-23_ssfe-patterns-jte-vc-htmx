@param String greetee

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>
<body class="page">

<div class="pagecontent">
<h1>Application Page</h1>

<!--
first parameter passed literally from this template.
Second parameter coming in from controller through Model and passed to included template:
-->
@template.jte.components.helloworldparams(
  greeting = "Hello",
  greetee = greetee
)

@template.jte.plainjte.page03inclparams_code()

</div>
</body>
</html>
