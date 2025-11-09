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

        <div class="column is-10">
            <h4 class="subtitle is-4">Inclusion-Page-Component</h4>

            <div class="card">
                <div class="card-content">
                    <div class="content">
                        <div>${ctx.greeting()}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

<!-- SSFE-PATTERN: Template-Inclusion: -->
@template.jte.pageend()
</div>

</html>
