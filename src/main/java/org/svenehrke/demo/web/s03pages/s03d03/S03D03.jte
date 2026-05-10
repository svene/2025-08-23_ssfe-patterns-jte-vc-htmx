@import org.svenehrke.demo.web.s03pages.s03d03.S03D03
@import org.svenehrke.demo.web.s03pages.s03d03.CustomPageWithParamCode

<%-- docs:start page --%>
@param S03D03.Ctx ctx

<%-- NOTE: WHOLE HTML PAGE: --%>
<!DOCTYPE html>
<html lang="en">
@template.jte.pages.page_head() <%-- INSERT HEAD COMPONENT --%>

<body>
<div class="container mt-1">

    <div class="p-1 mt-1">
        <h1 class="title">Custom Page with Param says: ${ctx.greeting()}</h1>
    </div>
    <%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/demos/s03/#3-custom-page">Docs</a>
    <%-- docs:start page --%>
</div>

</body>
</html>
<%-- docs:end page --%>
