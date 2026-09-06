@import org.svenehrke.demo.web.s04uipatterns.s04d02.First
@import org.svenehrke.demo.web.s04uipatterns.s04d02.S04D02

@param S04D02.Ctx ctx

<%-- docs:start page --%>
@template.jte.pages.bulmapage(
content = @`
    <h1 class="title">Forwarder-Page</h1>
    <div>${new First.Ctx("hello")}</div>
    <div>${new First().ctx("hello with forward")}</div> <%-- usage of context function bc. of logic --%>
    <%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/technologies/01_jte-vc/s04/#2-forwarder">Docs</a>
`)<%-- docs page --%>
