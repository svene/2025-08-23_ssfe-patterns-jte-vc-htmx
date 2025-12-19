@import org.svenehrke.demo.web.p03pages.p01contentpage.ContentPageCode

<div class="fixed-grid">
<div class="grid">

        @template.jte.components.codesnippet(
title = "ContentPage.jte",
codeSnippet = @`${ContentPageCode.PAGE_JTE}`
)
@template.jte.components.codesnippet(
title = "ContentPage.java",
codeSnippet = @`${ContentPageCode.PAGE_JAVA}`
)

</div>
</div>
