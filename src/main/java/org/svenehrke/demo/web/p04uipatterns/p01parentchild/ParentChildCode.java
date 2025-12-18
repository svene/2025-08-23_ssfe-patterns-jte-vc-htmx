package org.svenehrke.demo.web.p04uipatterns.p01parentchild;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import org.springframework.stereotype.Controller;

@ViewComponent
@Controller
public class ParentChildCode {
	public record Ctx() implements ViewContext { }

	public static String PAGE_JTE = """
      @template.jte.pages.bulmapage(
        content = @`
          <div>
              <h3>ParentChild-Page</h3>
              <div>${new Parent.Ctx("hello")}</div>
          </div>
      `)
      """;

	public static String PAGE_JAVA = """
      @ViewComponent
      @Controller
      public class ParentChildPage {
        public static final String URL = "/ui/pages/parentchild";
        public record Ctx() implements ViewContext { }

        @GetMapping(URL)
        public Ctx ctx() {
          return new Ctx();
        }
      }
      `)
      """;

	public static String PARENT_JTE = """
      @param Parent.Ctx ctx
      <h3>Parent</h3>
      <div>
        ${new Child.Ctx(@`slot-content from parent. Greeting: ${ctx.greeting()}`)}
      </div>
      `)
      """;

	public static String PARENT_JAVA = """
      @ViewComponent
      public class Parent {
        public record Ctx(String greeting) implements ViewContext {}
      }
      `)
      """;

	public static String CHILD_JTE = """
      @param Child.Ctx ctx
      <div>
        Child: <span>${ctx.slot1()}</span>
      </div>
      `)
      """;

	public static String CHILD_JAVA = """
      @ViewComponent
      public class Child {
        public record Ctx(Content slot1) implements ViewContext {}
      }
      `)
      """;

}
