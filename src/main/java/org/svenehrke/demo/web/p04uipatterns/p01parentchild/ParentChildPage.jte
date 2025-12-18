@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.Parent
@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ParentChildPage
@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ParentChildCode

@param ParentChildPage.Ctx ctx

@template.jte.pages.bulmapage(
content = @`
    <div>
        <h3>ParentChild-Page</h3>
        <div class="area-border p-1">
            ${new Parent.Ctx("hello")}
        </div>
    </div>
    <hr>
    ${new ParentChildCode.Ctx()}
`)
