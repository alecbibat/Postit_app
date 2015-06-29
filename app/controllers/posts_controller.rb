class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    # this should handle clicking on a post from the homepage
  end
end
