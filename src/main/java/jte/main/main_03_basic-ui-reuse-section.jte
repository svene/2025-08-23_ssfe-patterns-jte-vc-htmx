@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ParentPageComponent

<section class="section">
    <h1 class="title">UI Patterns</h1>
    <h2 class="subtitle">for reusable UI parts and components</h2>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.maincard(
            url = ParentPageComponent.URL,
            title = @`Parent Child`,
            subtitle = @``,
            content = @`Demo...`
            )

        </div>
    </div>
</section>
