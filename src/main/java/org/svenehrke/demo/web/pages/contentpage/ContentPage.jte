@import org.svenehrke.demo.web.pages.contentpage.ContentPageCode

@template.jte.pagetemplate(
content = @`
    <h1 class="title">Content Page</h1>
    ${new ContentPageCode.Ctx()}
`
)
