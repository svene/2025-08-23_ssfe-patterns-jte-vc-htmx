@import org.svenehrke.demo.web.p03pages.p01contentpage.ContentPageCode

@template.jte.pagetemplate(
content = @`
    <h1 class="title">Content Page</h1>
    ${new ContentPageCode.Ctx()}
`
)
