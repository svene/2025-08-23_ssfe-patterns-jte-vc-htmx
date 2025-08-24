@import org.svenehrke.demo.web.pages.Page1Component
@import org.svenehrke.demo.web.pages.Page2Component

@param Page2Component.Ctx ctx

<!DOCTYPE html>
<html lang="en">

<%-- SSFE-PATTERN: Template-Inclusion: --%>
@template.jte.pagestart()
<body>
<nav>
    <a href="${Page1Component.URL}">Page 1</a>
    <a href="${Page2Component.URL}">Page 2</a>
</nav>
<h3>Page-2-Component</h3>

<div>${ctx.greeting()}</div>
</body>

<%-- SSFE-PATTERN: Template-Inclusion: --%>
@template.jte.pageend()

</html>
