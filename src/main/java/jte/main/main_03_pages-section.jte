@import org.svenehrke.demo.web.p03pages.p01contentpage.ContentPage
@import org.svenehrke.demo.web.p03pages.p02contentpagewithparam.ContentPageWithParam
@import org.svenehrke.demo.web.p03pages.p03custompagewithparam.CustomPageWithParam
@import org.svenehrke.demo.web.p03pages.p04mpa.MpaPage1

<section class="section">
    <h1 class="title">Page Patterns</h1>
    <h2 class="subtitle">
        Patterns to build pages for Multi Page Applications (MPAs)<br>or just a single page
    </h2>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.main.maincard(
            url = ContentPage.URL,
            title = @`Content Page`,
            recommendation = @`Recommended for most use cases`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = ContentPageWithParam.URL,
            title = @`Content Page`,
            subtitle = @`taking a parameter`,
            recommendation = @`when the page itself needs a parameter`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = CustomPageWithParam.URL,
            title = @`Custom Page`,
            subtitle = @`taking a parameter`,
            recommendation = @`when the opinionated content page does not fit`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = MpaPage1.URL,
            title = @`MPA Example`,
            subtitle = @`with menu`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>
