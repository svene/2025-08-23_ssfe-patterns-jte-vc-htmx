@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ChildComponent

@param ChildComponent.Ctx ctx

<div>
    child: <span style="color: var(--bulma-warning)">${ctx.slot1()}</span>
</div>
