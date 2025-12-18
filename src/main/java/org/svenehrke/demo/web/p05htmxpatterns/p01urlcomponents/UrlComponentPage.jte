@import org.svenehrke.demo.web.p05htmxpatterns.p01urlcomponents.P05P01Message;

@template.jte.pages.bulmapage(
content = @`
    <h1 class="title">UrlComponentPage</h1>

    <button
            class="button"
            hx-get="${P05P01Message.URL}?message=hello"
            hx-target="#my-message"
    >Include Component</button>

    <div id="my-message"></div>
    <hr>
    <p>Message Component is dynamically included using:</p>
    <pre>hx-get=${P05P01Message.URL}?message=hello</pre>
`
)
