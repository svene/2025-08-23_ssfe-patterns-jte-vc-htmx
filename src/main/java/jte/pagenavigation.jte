@import org.svenehrke.demo.web.pages.InjectionPageComponent
@import org.svenehrke.demo.web.pages.InclusionPageComponent
@import org.svenehrke.demo.web.pages.InsertionPageComponent

<nav>
    <a href="${InjectionPageComponent.URL}">Injection-Page</a>
    <a href="${InclusionPageComponent.URL}">Inclusion-Page</a>
    <a href="${InsertionPageComponent.URL}">Insertion-Page</a>
</nav>
