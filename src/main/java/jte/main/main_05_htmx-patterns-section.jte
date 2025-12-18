@import org.svenehrke.demo.web.p05htmxpatterns.p01urlcomponents.UrlComponentPage
@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.ForwarderPage

<section class="section">
    <h1 class="title">HTMX Patterns</h1>
    <h2 class="subtitle">...</h2>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.main.maincard(
            url = UrlComponentPage.URL,
            title = @`URL Components`,
            subtitle = @`include components dynamically by their URL`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = ForwarderPage.URL,
            title = @`P2`,
            subtitle = @``,
            content = @`Demo...`
            )

        </div>
    </div>
</section>
