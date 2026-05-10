@import org.svenehrke.demo.web.s04uipatterns.p01parentchild.Child

@param Child.Ctx ctx

<div>
    Child: <span style="color: var(--bulma-warning)">${ctx.slot1()}</span>
</div>
