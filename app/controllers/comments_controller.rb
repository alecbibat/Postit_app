class CommentsController < ApplicationController

def create
  # handle the submission of a comment here
  @post = Post.find(params[:post_id])
  @comment = @post.comments.build(comment_params)
  @comment.user = User.first()

  if @comment.save
    flash[:notice] = "Your comment was saved."
    redirect_to post_path(@post)
  else
    render "posts/show" # is this best practices? (how do we do this using post_path)
  end

end

private

def comment_params
  params.require(:comment).permit!
end

end