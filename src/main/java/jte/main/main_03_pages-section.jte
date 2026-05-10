@import org.svenehrke.demo.web.s03pages.s03d01.S03D01
@import org.svenehrke.demo.web.s03pages.s03d02.S03D02
@import org.svenehrke.demo.web.s03pages.s03d03.S03D03
@import org.svenehrke.demo.web.s03pages.s03d04.S03D04P1

<section class="section">
    <h1 class="title">Page Patterns</h1>
    <h2 class="subtitle">
        For Multi Page Applications (MPAs)<br>or just a single page
    </h2>

    <div class="fixed-grid">
        <div class="grid">

            @template.jte.main.maincard(
            url = S03D01.URL,
            title = @`Content Page`,
            recommendation = @`Recommended for most use cases`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = S03D02.URL + "?greeting=Hey You!",
            title = @`Content Page`,
            subtitle = @`taking a parameter`,
            recommendation = @`When the page itself needs a parameter`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = S03D03.URL,
            title = @`Custom Page`,
            subtitle = @`taking a parameter`,
            recommendation = @`When the opinionated content page does not fit`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = S03D04P1.URL,
            title = @`MPA Example`,
            subtitle = @`with menu`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>
