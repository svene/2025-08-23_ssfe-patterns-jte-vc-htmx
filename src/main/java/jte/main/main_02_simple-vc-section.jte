@import org.svenehrke.demo.web.s02simplevcdemos.s02d01.S02D01
@import org.svenehrke.demo.web.s02simplevcdemos.s02d02.S02D02
@import org.svenehrke.demo.web.s02simplevcdemos.s02d03.S02D03
@import org.svenehrke.demo.web.s02simplevcdemos.s02d04.S02D04
@import org.svenehrke.demo.web.s02simplevcdemos.s02d05.S02D05

<section class="section">
    <h1 class="title">Simple Pages using View Components</h1>
    <h2 class="subtitle">For usecases with business logic. VCs combine JTE and Code in pairs.
    </h2>

    <div class="fixed-grid">
        <div class="grid">
            @template.jte.main.maincard(
            url = S02D01.URL,
            title = @`Basic VC Page`,
            subtitle = @`made using a View Component`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = S02D02.URL,
            title = @`Basic VC Page`,
            subtitle = @`using a VC component`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = S02D03.URL,
            title = @`Page and Component`,
            subtitle = @`with parameters`,
            recommendation = @`When page and/or component need parameters`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = S02D04.URL,
            title = @`Content parameter`,
            subtitle = @`passed from page to component`,
            recommendation = @`When html needs to be passed into component`,
            content = @`Demo...`
            )

            @template.jte.main.maincard(
            url = S02D05.URL,
            title = @`Nested components`,
            subtitle = @`or: template in template`,
            recommendation = @`If you need components in content-parameters`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>

