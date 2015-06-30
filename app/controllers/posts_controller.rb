class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show

    @post = Post.find(params[:id])

    # this should handle clicking on a post from the homepage

    # this should display comments from the specific post it was displayed under
  end
end
