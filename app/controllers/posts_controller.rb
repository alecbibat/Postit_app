class PostsController < ApplicationController

before_action :set_post, only: [:show, :edit, :update]

  def index
    @post = Post.all
  end

  def show
  end

  def new
    @post = Post.new()

    # display new post form
  end

  def create
    @post = Post.new(post_params)
    @post.user = User.first
 
    if @post.save
      redirect_to posts_path
    else
      render new_post_path
    end

    # handle new post form submit
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render edit_post_path
    end
    # handle edit post form submit
  end

  private

  def post_params
    params.require(:post).permit!
  end

  def set_post
    @post = Post.find(params[:id])
  end


end
