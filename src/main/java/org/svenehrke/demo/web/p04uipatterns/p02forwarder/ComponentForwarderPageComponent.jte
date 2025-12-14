@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.ComponentForwarderPageComponent
@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.FirstComponent

@param ComponentForwarderPageComponent.Ctx ctx

@template.jte.pagetemplate(
content = @`
<h3>ComponentForwarder-Page</h3>

    <div>${new FirstComponent().ctx("hello")}</div>
    <div>${new FirstComponent().ctx("hello with forward")}</div>
`)
