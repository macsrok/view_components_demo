require "view_component/test_case"

class FormComponentTest < ViewComponent::TestCase
    test "render component" do
        post = Post.new(title: 'Title.')
        result = render_inline(FormComponent.new(post: post))
        assert_includes result.css("input[type='text']").to_html, 'value="Title."'
    end
end
