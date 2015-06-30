class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show

    @post = Post.find(params[:id])

    # this should handle clicking on a post from the homepage

    # this should display comments from the specific post it was displayed under
  end

  def new
    @post = Post.new()

    # display new post form
  end

  def create
    # handle new post form submit
  end

  def edit
    # display edit post form
  end

  def update
    # handle edit post form submit
  end


end
