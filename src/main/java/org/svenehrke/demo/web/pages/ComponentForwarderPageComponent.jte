@import org.svenehrke.demo.web.pages.ComponentForwarderPageComponent
@import org.svenehrke.demo.web.components.componentforwarder.FirstComponent

@param ComponentForwarderPageComponent.Ctx ctx

@template.jte.layout(
selectedMenu = "forwarder",
content = @`
<h3>ComponentForwarder-Page-Component</h3>

    <div>${new FirstComponent().ctx("hello")}</div>
    <div>${new FirstComponent().ctx("hello with forward")}</div>
`)
