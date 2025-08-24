@import org.svenehrke.demo.web.pages.InclusionPageComponent

@param InclusionPageComponent.Ctx ctx

<!DOCTYPE html>
<html lang="en">

<!-- SSFE-PATTERN: Template-Inclusion: -->
@template.jte.pagestart()
<body>
<!-- SSFE-PATTERN: Template-Inclusion: -->
@template.jte.pagenavigation()

<h3>Inclusion-Page-Component</h3>

<div>${ctx.greeting()}</div>
</body>

<!-- SSFE-PATTERN: Template-Inclusion: -->
@template.jte.pageend()

</html>
