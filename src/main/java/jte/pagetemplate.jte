@import gg.jte.Content

@param Content content = @``

<!DOCTYPE html>
<html lang="en">
@template.jte.pages.page_head()

<body>
<div class="container mt-1">

    <div class="p-1 mt-1">
        ${content}
    </div>
</div>

</body>
</html>
