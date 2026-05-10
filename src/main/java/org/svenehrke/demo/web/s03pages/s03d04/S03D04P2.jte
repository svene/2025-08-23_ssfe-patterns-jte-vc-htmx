@import org.svenehrke.demo.web.s03pages.s03d04.S03D04P2
@import org.svenehrke.demo.web.s03pages.s03d04.MpaLayout

<%-- docs:start page --%>
@param S03D04P2.Ctx ctx

${new MpaLayout.Ctx(
	"page2",
	@`
    <div class="is-flex is-justify-content-space-around p-1">
        <div class="p-1">
            <h4 class="subtitle is-4">Lorem ipsum dolor sit amet</h4>
        </div>
    </div>
`)}
<%-- docs:end page --%>
