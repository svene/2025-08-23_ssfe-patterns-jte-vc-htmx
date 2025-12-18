@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ParentPage
@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.ForwarderPage

<section class="section">
    <h1 class="title">HTMX Patterns</h1>
    <h2 class="subtitle">...</h2>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.main.maincard(
            url = ParentPage.URL,
            title = @`P1`,
            subtitle = @``,
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
