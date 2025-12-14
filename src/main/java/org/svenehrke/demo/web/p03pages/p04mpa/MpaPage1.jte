@import org.svenehrke.demo.web.p03pages.p04mpa.MpaPage1
@import org.svenehrke.demo.web.p03pages.p04mpa.MpaLayout

@param MpaPage1.Ctx ctx


${new MpaLayout.Ctx(
	"page1",
	@`
    <div class="is-flex is-justify-content-space-around p-1">
        <div class="p-1">
            <h4 class="subtitle is-4">Page 1</h4>
        </div>

    </div>
`)}
