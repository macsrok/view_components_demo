#test/components/previews/form_component_preview.rb
class FormComponentPreview < ViewComponent::Preview
    def with_new_post
        render(FormComponent.new(post: Post.new))
    end

    def with_title_set
        render(FormComponent.new(post: Post.new(title: 'Title.')))
    end
end