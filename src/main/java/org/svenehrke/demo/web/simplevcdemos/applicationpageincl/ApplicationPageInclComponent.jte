@import org.svenehrke.demo.web.simplevcdemos.applicationpageincl.HelloWorld

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/demopage.css"/>
</head>

<body class="page">
<h1>Application Page</h1>

${new HelloWorld.Ctx()}
${HelloWorld.ctx()}

<div class="codeblock">

<strong>src/main/java/.../ApplicationPageInclComponent.java:</strong>
<pre><code>&#64;ViewComponent
&#64;Controller
public class ApplicationPageInclComponent {

  public static final String URL = "/ui/demos/simplevc/applicationpageincl";

  public record Ctx() implements ViewContext {
  }

  &#64;GetMapping(URL)
  public Ctx ctx() {
    return new Ctx();
  }
}
</code></pre>
<hr>
<strong>src/main/java/.../ApplicationPageInclComponent.jte:</strong>
<pre><code>&lt;h1&gt;Application Page&lt;/h1&gt;
&#36;{new HelloWorld.Ctx()} // &lt;=== include the View Component (variant 1)
&#36;{HelloWorld.ctx()} // &lt;=== include the View Component (variant 2)
</code></pre>

<strong>src/main/java/.../HelloWorld.java:</strong>
<pre><code>&#64;ViewComponent
public class HelloWorld {
  public record Ctx() implements ViewContext { // &lt;=== include the View Component (variant 1)
  }

  public Ctx ctx() { // &lt;=== include the View Component (variant 2)
    return new Ctx();
  }
}
</code></pre>
<hr>
<strong>src/main/java/.../HelloWorld.jte:</strong>
<pre><code>&lt;h3&gt;Hello world!&lt;/h3&gt;
</code></pre>

</div>

</body>
</html>
