@import org.svenehrke.demo.web.pocs.wcswap.WCSwapPageComponent

<section class="section">
    <h1 class="title">Experiments</h1>
    <h2 class="subtitle">
        Some PoCs
    </h2>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.maincard(
            url = WCSwapPageComponent.URL,
            title = @`Swap Webcomponent`,
            content = @`Investigate possible rendering issues`
            )

        </div>
    </div>
</section>
