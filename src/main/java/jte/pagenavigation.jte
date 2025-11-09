@import org.svenehrke.demo.web.pages.*
@import org.svenehrke.demo.web.pages.InclusionPageComponent
@import org.svenehrke.demo.web.pages.InsertionPageComponent
@import org.svenehrke.demo.web.pages.ParentPageComponent
@import org.svenehrke.demo.web.pages.ComponentForwarderPageComponent

<aside class="menu">
    <p class="menu-label">Signals</p>
    <ul class="menu-list">
        <li><a href="${InjectionPageComponent.URL}">Injection-Page</a></li>
        <li><a href="${InclusionPageComponent.URL}">Inclusion-Page</a></li>
        <li><a href="${InsertionPageComponent.URL}">Insertion-Page</a></li>
        <li><a href="${ParentPageComponent.URL}">Parent-Child-Page</a></li>
        <li><a href="${ComponentForwarderPageComponent.URL}">Component-Forwarder-Page</a></li>
    </ul>
</aside>
