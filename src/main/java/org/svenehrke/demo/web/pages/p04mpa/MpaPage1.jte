@import org.svenehrke.demo.web.pages.p04mpa.MpaPage1
@import org.svenehrke.demo.web.pages.p04mpa.MpaLayout

@param MpaPage1.Ctx ctx


${new MpaLayout.Ctx(
	"injection",
	@`
    <div class="is-flex is-justify-content-space-around p-1">
        <div class="area-border p-1">
            <h4 class="subtitle is-4">Bla</h4>
        </div>

    </div>
`)}
