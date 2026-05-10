@import org.svenehrke.demo.web.s04uipatterns.s04d01.Parent
@import org.svenehrke.demo.web.s04uipatterns.s04d01.Child

<%-- docs:start component --%>
@param Parent.Ctx ctx

<h3>Parent</h3>
<div class="area-border p-1">
${new Child.Ctx(@`slot-content from parent. Greeting: ${ctx.greeting()}`)}
</div>
<%-- docs:end component --%>
