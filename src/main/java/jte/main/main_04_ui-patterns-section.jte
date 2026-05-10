@import org.svenehrke.demo.web.s04uipatterns.s04d01.S04D01
@import org.svenehrke.demo.web.s04uipatterns.s04d02.S04D02

<section class="section">
    <h1 class="title">UI Patterns</h1>
    <h2 class="subtitle">For reusable UI parts and components</h2>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.main.maincard(
            url = S04D01.URL,
            title = @`Parent Child`,
            subtitle = @``,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = S04D02.URL,
            title = @`Forwarder`,
            subtitle = @``,
            content = @`Demo...`
            )

        </div>
    </div>
</section>
