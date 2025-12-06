<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/demopage.css"/>
</head>

<body class="page">
<div class="pagecontent">
<h1>Application Page</h1>

<div class="codeblock">
<strong>src/main/java/.../ApplicationPageComponent.java:</strong>
<pre><code>&#64;ViewComponent
&#64;Controller
public class ApplicationPageComponent {

public static final String URL = "/ui/demos/simplevc/applicationpage";

  public record Ctx() implements ViewContext {
  }

  &#64;GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>
<hr>
<strong>src/main/java/.../ApplicationPageComponent.jte:</strong>
<pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;
</code></pre>

</div>

</div>
</body>
</html>
