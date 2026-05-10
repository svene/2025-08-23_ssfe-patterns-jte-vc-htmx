@import org.svenehrke.demo.web.s04uipatterns.s04d01.Child

<%-- docs:start component --%>
@param Child.Ctx ctx

<div>
    Child: <span style="color: var(--bulma-warning)">${ctx.slot1()}</span>
</div>
<%-- docs:end component --%>
