@import org.svenehrke.demo.web.components.parentchild.ChildComponent

@param ChildComponent.Ctx ctx

<div>
    child: <span style="color: var(--bulma-warning)">${ctx.slot1()}</span>
</div>
