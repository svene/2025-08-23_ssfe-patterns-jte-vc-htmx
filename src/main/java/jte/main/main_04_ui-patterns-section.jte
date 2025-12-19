@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ParentChildPage
@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.ForwarderPage

<section class="section">
    <h1 class="title">UI Patterns</h1>
    <h2 class="subtitle">For reusable UI parts and components</h2>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.main.maincard(
            url = ParentChildPage.URL,
            title = @`Parent Child`,
            subtitle = @``,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = ForwarderPage.URL,
            title = @`Forwarder`,
            subtitle = @``,
            content = @`Demo...`
            )

        </div>
    </div>
</section>
