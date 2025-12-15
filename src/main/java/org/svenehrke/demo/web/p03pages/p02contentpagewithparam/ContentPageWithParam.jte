@import org.svenehrke.demo.web.p03pages.p02contentpagewithparam.ContentPageWithParam
@import org.svenehrke.demo.web.p03pages.p02contentpagewithparam.ContentPageWithParamCode

@param ContentPageWithParam.Ctx ctx

@template.jte.pages.pagetemplate(
content = @`
    <h1 class="title">Content Page with Param says: ${ctx.greeting()}</h1>
    ${new ContentPageWithParamCode.Ctx()}

`
)
