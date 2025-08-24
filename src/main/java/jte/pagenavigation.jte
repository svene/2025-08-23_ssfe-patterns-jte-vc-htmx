@import org.svenehrke.demo.web.pages.*
@import org.svenehrke.demo.web.pages.InclusionPageComponent
@import org.svenehrke.demo.web.pages.InsertionPageComponent
@import org.svenehrke.demo.web.pages.ParentPageComponent
@import org.svenehrke.demo.web.pages.ComponentForwarderPageComponent

<nav>
    <a href="${InjectionPageComponent.URL}">Injection-Page</a> |
    <a href="${InclusionPageComponent.URL}">Inclusion-Page</a> |
    <a href="${InsertionPageComponent.URL}">Insertion-Page</a> |
    <a href="${ParentPageComponent.URL}">Parent-Child-Page</a> |
    <a href="${ComponentForwarderPageComponent.URL}">Component-Forwarder-Page</a> |
    <a href="${ComponentForwarderPageComponent.URL}?greeting=forward">Component-Forwarder-Page: forward to InjectionPage</a> |
</nav>
