class CommentsController < ApplicationController

def create
  # handle the submission of a comment here
  binding.pry
  @post = Post.find(params[:post_id])
  @comment = @post.comments.build(comment_params)
  @comment.user = User.first()

  if @comment.save
    redirect_to '/posts' # we were told not to do this!
  else
    render post_path
  end

end

private

def comment_params
  params.require(:comment).permit!
end

end