@import org.svenehrke.demo.web.pages.p04mpa.MpaPage2
@import org.svenehrke.demo.web.pages.p04mpa.MpaLayout

@param MpaPage2.Ctx ctx


${new MpaLayout.Ctx(
	"page2",
	@`
    <div class="is-flex is-justify-content-space-around p-1">
        <div class="p-1">
            <h4 class="subtitle is-4">Page 2</h4>
        </div>

    </div>
`)}
