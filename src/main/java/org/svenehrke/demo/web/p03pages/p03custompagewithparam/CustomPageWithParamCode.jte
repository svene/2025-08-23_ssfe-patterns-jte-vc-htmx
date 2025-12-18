@import org.svenehrke.demo.web.p03pages.p03custompagewithparam.CustomPageWithParamCode

<div class="fixed-grid">
<div class="grid">

<%-- -------------------------------- CustomPageWithParam ------------------------------ --%>
@template.jte.components.codesnippet(
title = "CustomPageWithParam.jte",
codeSnippet = @`${CustomPageWithParamCode.JTE}`
)

@template.jte.components.codesnippet(
title = "CustomPageWithParam.java",
codeSnippet = @`${CustomPageWithParamCode.JAVA}`
)

</div>
</div>

