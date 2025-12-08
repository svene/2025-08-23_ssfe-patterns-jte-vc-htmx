@import org.svenehrke.demo.web.pages.BasicPageWithParam

@param BasicPageWithParam.Ctx ctx

@template.jte.pagetemplate(
content = @`
    <h1 class="title">Basic Page with Param says: ${ctx.greeting()}</h1>
`
)
