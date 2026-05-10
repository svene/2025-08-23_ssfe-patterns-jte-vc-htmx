@import org.svenehrke.demo.web.s03pages.s03d04.S03D04P1
@import org.svenehrke.demo.web.s03pages.s03d04.MpaLayout

@param S03D04P1.Ctx ctx

<%-- docs:start page --%>
${new MpaLayout.Ctx(
	"page1",
	@`
    <div class="p-1">
        <div class="content">
            <p>Lorem ipsum ...</p>
            <%-- docs:end page --%>
            <p>... dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
            </p>
            <%-- docs:start page --%>
        </div>

    </div>
`)}
<%-- docs:end page --%>
