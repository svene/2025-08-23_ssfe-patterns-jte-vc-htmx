@import org.svenehrke.demo.web.s05htmxpatterns.s05d01.S05D01Message;

<%-- docs:start page --%>
@template.jte.pages.bulmapage(
content = @`
    <h1 class="title">UrlComponent-Page</h1>

    <button
            class="button"
            hx-get="${S05D01Message.URL}?message=hello"
            hx-target="#my-message"
    >Include Component</button>

    <div id="my-message"></div>
    <hr>
    <p>Message Component is dynamically included using:</p>
    <pre>hx-get=${S05D01Message.URL}?message=hello</pre>
<%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/technologies/01_jte-vc/s05/#1-url-components">Docs</a>
`) <%-- docs: page --%>
