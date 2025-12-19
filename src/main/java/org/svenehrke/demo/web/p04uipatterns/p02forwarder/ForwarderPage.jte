@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.First
@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.ForwarderCode
@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.ForwarderPage

@param ForwarderPage.Ctx ctx

@template.jte.pages.bulmapage(
content = @`
<h3>Forwarder-Page</h3>
    <div>${new First.Ctx("hello")}</div>
    <div>${new First().ctx("hello with forward")}</div> <%-- usage of context function bc. of logic --%>
    <hr>
    ${new ForwarderCode.Ctx()}
`)
