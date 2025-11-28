@import org.svenehrke.demo.web.pages.pocs.wcswap.wcwrapper1.WCWrapper1Component

@template.jte.simplepagelayout(
xhead = @`
    <script type="module" src="/wcswappage.js" defer></script>
    <script>
		// htmx.logAll();
    </script>
`,
content = @`
    <h3>Webcomponent Swap Page</h3>

    <div class="fixed-grid">
        <div class="grid">
            <div class="cell is-flex colum is-flex-direction-column is-gap-1">
                <button
                    class="button"
                    hx-get="${WCWrapper1Component.URL}"
                    hx-target="#wc-wrapper-1"
                    xhx-swap="outerHTML"
                    hx-swap="outerHTML"
                >Swap outerHTML</button>
                <button
                        class="button"
                        hx-get="${WCWrapper1Component.URL}"
                        hx-target="#wc-wrapper-1"
                        xhx-swap="outerHTML"
                        hx-swap="outerHTML transition:true"
                >Swap outerHTML with transition</button>
            </div>
            <div class="cell">
                <div class="p-1">
                    ${new WCWrapper1Component.Ctx()}
                </div>
            </div>
        </div>
    </div>

`)
