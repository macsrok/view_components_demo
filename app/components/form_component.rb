class FormComponent < ViewComponent::Base
    def initialize(post:)
        @post = post
    end
end