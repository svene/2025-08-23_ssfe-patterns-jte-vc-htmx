@import org.svenehrke.demo.web.p04uipatterns.p01parentchild.ParentChildCode

<div class="content">
    <h6>Applicability</h6>
    <p>Use when</p>
    <ul>
        <li>a child component has a rather large HTML content</li>
        <li>a parent component needs to customize a rather small part (or parts) of the child component</li>
    </ul>
</div>
<hr>

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
