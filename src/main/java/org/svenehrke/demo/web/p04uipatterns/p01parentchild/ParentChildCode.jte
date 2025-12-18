@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ParentChildCode

<div class="fixed-grid">
 <div class="grid">

     @template.jte.components.codesnippet(
     title = "ParentChildPage.jte",
     codeSnippet = @`${ParentChildCode.PAGE_JTE}`
     )
     @template.jte.components.codesnippet(
     title = "ParentChildPage.java",
     codeSnippet = @`${ParentChildCode.PAGE_JAVA}`
     )

     @template.jte.components.codesnippet(
     title = "Parent.jte",
     codeSnippet = @`${ParentChildCode.PARENT_JTE}`
     )
     @template.jte.components.codesnippet(
     title = "Parent.java",
     codeSnippet = @`${ParentChildCode.PARENT_JAVA}`
     )

     @template.jte.components.codesnippet(
     title = "Child.jte",
     codeSnippet = @`${ParentChildCode.CHILD_JTE}`
     )
     @template.jte.components.codesnippet(
     title = "Child.java",
     codeSnippet = @`${ParentChildCode.CHILD_JAVA}`
     )

    </div>
</div>

