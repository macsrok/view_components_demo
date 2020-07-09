  # app/controllers/posts_controller.rb
  # GET /posts/new
  def new
    @post = Post.new
    render 'new_with_component' if params[:use_component].present?
  end