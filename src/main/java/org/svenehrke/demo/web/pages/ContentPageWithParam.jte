@import org.svenehrke.demo.web.pages.ContentPageWithParam

@param ContentPageWithParam.Ctx ctx

@template.jte.pagetemplate(
content = @`
    <h1 class="title">Content Page with Param says: ${ctx.greeting()}</h1>
`
)
