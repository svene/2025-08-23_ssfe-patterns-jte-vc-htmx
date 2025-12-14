@import org.svenehrke.demo.web.PlainJTEController

<section class="section">
    <h1 class="title">Simple Pages using plain JTE files</h1>
    <h2 class="subtitle">For basic usecases. Needs a spring-controller.</h2>
    <h6 class="subtitle"></h6>

    <div class="fixed-grid">
        <div class="grid">
            @template.jte.maincard(
            url = PlainJTEController.PAGE_01_URL,
            title = @`Basic JTE Page`,
            subtitle = @`made using a JTE template`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PlainJTEController.PAGE_02_INCL_URL,
            title = @`Basic JTE Page`,
            subtitle = @`using a JTE component`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PlainJTEController.PAGE_03_INCL_PARAMS_URL,
            title = @`Page and Component`,
            subtitle = @`with parameters`,
            recommendation = @`When page and/or component need parameters`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PlainJTEController.PAGE_04_PASS_CONTENT_URL,
            title = @`Content parameter`,
            subtitle = @`passed from page to component`,
            recommendation = @`When html needs to be passed into component`,
            content = @`Demo...`
            )

            @template.jte.maincard(
            url = PlainJTEController.PAGE_05_NESTED_URL,
            title = @`Nested components`,
            subtitle = @`or: template in template`,
            recommendation = @`if you need components in content-parameters`,
            content = @`Demo...`
            )

        </div>
    </div>
</section>

