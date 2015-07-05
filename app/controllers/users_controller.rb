class UsersController < ApplicationController

def new
end

def create
  binding.pry
  @user = User.new(user_params)
  if @user.save
    flash[:notice] = "You've successfully registered!"
    redirect_to posts_path
  else
    render :new
  end
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