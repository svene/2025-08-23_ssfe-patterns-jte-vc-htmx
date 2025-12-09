@import org.svenehrke.demo.web.pages.contentpagewithparam.ContentPageWithParam
@import org.svenehrke.demo.web.pages.contentpagewithparam.ContentPageWithParamCode

@param ContentPageWithParam.Ctx ctx

@template.jte.pagetemplate(
content = @`
    <h1 class="title">Content Page with Param says: ${ctx.greeting()}</h1>
    ${new ContentPageWithParamCode.Ctx()}

`
)
