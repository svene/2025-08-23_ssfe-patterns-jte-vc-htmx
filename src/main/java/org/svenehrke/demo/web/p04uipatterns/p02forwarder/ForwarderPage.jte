@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.First
@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.ForwarderPage

@param ForwarderPage.Ctx ctx

@template.jte.pagetemplate(
content = @`
<h3>Forwarder-Page</h3>

    <div>${new First().ctx("hello")}</div>
    <div>${new First().ctx("hello with forward")}</div>
`)
