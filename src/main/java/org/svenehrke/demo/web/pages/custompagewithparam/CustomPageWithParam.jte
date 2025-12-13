@import org.svenehrke.demo.web.pages.custompagewithparam.CustomPageWithParam
@import org.svenehrke.demo.web.pages.custompagewithparam.CustomPageWithParamCode

@param CustomPageWithParam.Ctx ctx

<!DOCTYPE html>
<html lang="en">
@template.jte.pages.page_head()

<body>
<div class="container mt-1">

    <div class="p-1 mt-1">
        <h1 class="title">Custom Page with Param says: ${ctx.greeting()}</h1>
        ${new CustomPageWithParamCode.Ctx()}
    </div>
</div>

</body>
</html>
