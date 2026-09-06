@import org.svenehrke.demo.web.s03pages.s03d02.S03D02

<%-- docs:start page --%>
@param S03D02.Ctx ctx

@template.jte.pages.bulmapage(
    content = @`
        <h1 class="title">Content Page with Param says: ${ctx.greeting()}</h1>
`
)
<%-- docs:end page --%>
<hr>
<a href="http://localhost:4321/technologies/01_jte-vc/s03/#2-parameter">Docs</a>

