@import org.svenehrke.demo.web.components.parentchild.ChildComponent

@param ChildComponent.Ctx ctx

<div>child: before</div>
${ctx.slot1()}
<div>child: after</div>
