@import org.svenehrke.demo.web.p03pages.p01contentpage.ContentPageCode

@template.jte.pages.bulmapage(
content = @`
    <h1 class="title">Content Page</h1>
    ${new ContentPageCode.Ctx()}
`
)
