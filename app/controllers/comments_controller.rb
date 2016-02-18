class CommentsController < ApplicationController
  def create
    # find the parent post
    @post = Post.find(params[:post_id])
    # make new comment
    @comment = @post.comments.new(comment_params)
    # save 
    if @comment.save
      # profit... or redirect to the post
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      render "posts/show"
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
