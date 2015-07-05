class UsersController < ApplicationController

def new
  @user = User.new()
end

def create
  @user = User.new(user_params)

  if @user.save
    flash[:notice] = "You've successfully registered!"
    redirect_to posts_path
  else
    render :new
  end

  binding.pry
end

def edit
end

def update
end

  # index?
  # new : register page
  # create : register
  # edit : edit page
  # update : handle update action
end

private

def user_params
  params.require(:user).permit!
end