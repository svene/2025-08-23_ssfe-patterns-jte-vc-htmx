@import org.svenehrke.demo.web.p05htmxpatterns.p01urlcomponents.UrlComponentPage

<section class="section">
    <h1 class="title">HTMX Patterns</h1>
    <h2 class="subtitle">For more interactivity</h2>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.main.maincard(
            url = UrlComponentPage.URL,
            title = @`URL Components`,
            subtitle = @`include components dynamically by their URL`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>
