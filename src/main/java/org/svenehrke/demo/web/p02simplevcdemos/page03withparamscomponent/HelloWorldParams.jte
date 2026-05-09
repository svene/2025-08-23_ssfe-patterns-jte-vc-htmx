@import org.svenehrke.demo.web.p02simplevcdemos.page03withparamscomponent.HelloWorldParams
<%-- docs:start component --%>
@param HelloWorldParams.Ctx ctx

<h3>${ctx.greeting()} ${ctx.greetee()}!</h3>
<%-- docs:end component --%>

