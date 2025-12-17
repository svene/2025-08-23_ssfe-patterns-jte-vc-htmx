@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.Parent
@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ParentPage
@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ParentChildCode

@param ParentPage.Ctx ctx

@template.jte.pages.bulmapage(
content = @`
    <div>
        <h3>Parent-Page</h3>
        <div class="area-border p-1">
            ${new Parent.Ctx("hello")}
        </div>
    </div>
    <hr>
    ${new ParentChildCode.Ctx()}
`)
