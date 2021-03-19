class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to posts_path(@post)
  end

  def destroy

  end

  private
    def comment_params
        params.require(:comment).permit(:user_id, :body)
    end

end
