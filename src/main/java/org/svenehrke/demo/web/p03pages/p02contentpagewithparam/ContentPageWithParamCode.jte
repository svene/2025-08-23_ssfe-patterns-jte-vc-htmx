@import org.svenehrke.demo.web.p03pages.p02contentpagewithparam.ContentPageWithParamCode

<div class="fixed-grid">
<div class="grid">
    @template.jte.components.codesnippet(
    title = "ContentPageWithParam.jte",
    codeSnippet = @`${ContentPageWithParamCode.PAGE_JTE}`
    )
    @template.jte.components.codesnippet(
    title = "ContentPageWithParam.java",
    codeSnippet = @`${ContentPageWithParamCode.PAGE_JAVA}`
    )

</div>
</div>
