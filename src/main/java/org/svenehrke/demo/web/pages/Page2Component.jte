@import org.svenehrke.demo.web.pages.Page2Component

@param Page2Component.Ctx ctx

<!DOCTYPE html>
<html lang="en">

<!-- SSFE-PATTERN: Template-Inclusion: -->
@template.jte.pagestart()
<body>
<!-- SSFE-PATTERN: Template-Inclusion: -->
@template.jte.pagenavigation()

<h3>Page-2-Component</h3>

<div>${ctx.greeting()}</div>
</body>

<!-- SSFE-PATTERN: Template-Inclusion: -->
@template.jte.pageend()

</html>
