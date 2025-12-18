@import org.svenehrke.demo.web.p04uipatterns.p02forwarder.ForwarderCode

<div class="fixed-grid">
<div class="grid">

<%-- -------------------------------- ForwarderPage ------------------------------ --%>
@template.jte.components.codesnippet(
  title = "ForwarderPage.jte",
  codeSnippet = @`${ForwarderCode.PAGE_JTE}`
)
@template.jte.components.codesnippet(
  title = "ForwarderPage.java",
  codeSnippet = @`${ForwarderCode.PAGE_JAVA}`
)

<%-- -------------------------------- First ------------------------------ --%>
@template.jte.components.codesnippet(
  title = "First.jte",
  codeSnippet = @`${ForwarderCode.FIRST_JTE}`
)
@template.jte.components.codesnippet(
  title = "First.java",
  codeSnippet = @`${ForwarderCode.FIRST_JAVA}`
)
<%-- -------------------------------- Second ------------------------------ --%>
@template.jte.components.codesnippet(
    title = "Second.jte",
    codeSnippet = @`${ForwarderCode.SECOND_JTE}`
)
@template.jte.components.codesnippet(
    title = "Second.java",
    codeSnippet = @`${ForwarderCode.SECOND_JAVA}`
)

</div>
</div>

