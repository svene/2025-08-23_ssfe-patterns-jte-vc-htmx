@import org.svenehrke.demo.web.pages.ParentPageComponent
@import org.svenehrke.demo.web.pages.ComponentForwarderPageComponent
@import org.svenehrke.demo.web.pages.p04mpa.MpaLayout
@import org.svenehrke.demo.web.pages.p04mpa.MpaPage1
@import org.svenehrke.demo.web.pages.p04mpa.MpaPage2

@param MpaLayout.Ctx ctx

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Application/Page Patterns</title>
    <script src="/webjars/htmx.org/dist/htmx.js"></script>
    <link rel="stylesheet" href="/webjars/bulma/css/bulma.css"/>
    <link rel="stylesheet" href="/main.css"/>
</head>

<body>
<section class="hero is-link">
    <div class="hero-body">
        <p class="title">Template Based Application/Page Patterns</p>
        <p class="subtitle">SSFE-Patterns Demo with JTE-VC</p>
    </div>
</section>

<div class="container mt-1">
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item ${ ("page1".equals(ctx.selectedMenu())) ? "is-selected" : ""} " href="${MpaPage1.URL}">Page 1</a>
                <a class="navbar-item ${ ("page2".equals(ctx.selectedMenu())) ? "is-selected" : ""} " href="${MpaPage2.URL}">Page 2</a>
                <a class="navbar-item ${ ("parentchild".equals(ctx.selectedMenu())) ? "is-selected" : ""} " href="${ParentPageComponent.URL}">Parent-Child Pattern</a>
                <a class="navbar-item ${ ("forwarder".equals(ctx.selectedMenu())) ? "is-selected" : ""} " href="${ComponentForwarderPageComponent.URL}">Component-Forwarder Pattern</a>
            </div>
        </div>
    </nav>

    <div class="p-1 mt-1 area-border" style="min-height: 500px">
        ${ctx.content()}
    </div>

    <hr>

    <div class="content">
        <p>The pages of this application all use a common layout component (the template).</p>
        <p>In contrast to the Inclusion Pattern the <strong>layout</strong> component <strong>plays an active role</strong><br>
            in the template process because it pulls in the component.<br>
            The component plays the passive role.<br>
            Therefore it is the layout which uses the injection pattern, not the component.
        </p>
        <p>Since the components are injected into the layout dynamically<br>
            it can be reused for all pages of the application.</p>

        <p>For this demo the injected component-content is surrounded with a colored border<br>
            to show what is coming from the layout and what is coming from the component.<br>
            Everything outside the border is coming from the layout template.<br>
            Everything inside is comping from the injected component.
        </p>
    </div>


</div>

</body>
</html>
