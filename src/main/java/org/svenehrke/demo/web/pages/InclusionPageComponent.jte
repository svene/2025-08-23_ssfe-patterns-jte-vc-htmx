@import org.svenehrke.demo.web.pages.InclusionPageComponent

@param InclusionPageComponent.Ctx ctx

<!DOCTYPE html>
<html lang="en">

<div class="card m-5">
<!-- SSFE-PATTERN: Template-Inclusion: -->
@template.jte.pagestart()
<body>
<section class="section">
    <div class="container">
        <h1 class="title">SSFE-Patterns Demo with JTE-VC</h1>
        <p class="subtitle">
            SSFE-Patterns Demo with JTE-VC
        </p>
    </div>
</section>

<div class="container">
    <div class="columns">
        <div class="column is-2">
            <!-- SSFE-PATTERN: Template-Inclusion: -->
            @template.jte.pagenavigation()
        </div>

                <div class="card-content">
                    <h4 class="subtitle is-4">Inclusion-Page-Component</h4>
                    <div class="content">
                        <p>${ctx.greeting()}</p>
                        <p>This page-component does not use a layout component</p>
                        <p>Instead it constructs a page by including the common parts like header, navigation and footer itself.</p>
                        <p>So this component has an active role in the process, not a passive one as in the Injection-Pattern</p>
                        <p>In contrast to the layout component it knows its content</p>
                        <p>In contrast to the layout component it is not reusable as a whole.
                        Only the parts (header, navigation, footer) are reusable</p>
                    </div>
                </div>
            </div>
</div>
</body>

<!-- SSFE-PATTERN: Template-Inclusion: -->
@template.jte.pageend()
</div>

</html>
