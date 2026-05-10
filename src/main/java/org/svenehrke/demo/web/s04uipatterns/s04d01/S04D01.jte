@import org.svenehrke.demo.web.s04uipatterns.s04d01.Parent
@import org.svenehrke.demo.web.s04uipatterns.s04d01.S04D01

@param S04D01.Ctx ctx

<%-- docs:start page --%>
@template.jte.pages.bulmapage(
content = @`
    <div>
        <h3>ParentChild-Page</h3>
        <div class="area-border p-1">
            ${new Parent.Ctx("hello")}
        </div>
    </div>
    <%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/demos/s04/#1-parent-child">Docs</a>
`) <%-- docs: page --%>

