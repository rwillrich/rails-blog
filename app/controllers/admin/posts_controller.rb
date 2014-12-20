module Admin

  class PostsController < ResourceController

    def index
      @posts = collection
      respond_with(:admin, @posts)
    end

    def show
      @post = resource
      respond_with(:admin, @posts)
    end

    def new
      @post = Post.new
      respond_with(:admin, @post)
    end

    def create
      @post = Post.create(post_params)
      respond_with(:admin, @post)
    end

    def edit
      @post = resource
      respond_with(:admin, @post)
    end

    def update
      @post = resource
      @post.update_attributes(post_params)
      respond_with(:admin, @post)
    end

    def destroy
      @post = resource
      @post.destroy
      respond_with(:admin, @post)
    end

    protected

      def resource
        @post ||= Post.find(params[:id])
      end

      def collection
        @posts ||= Post.all
      end

      def post_params
        params.require(:post).permit(:title, :summary, :text)
      end

  end

end
