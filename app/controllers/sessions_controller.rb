class SessionsController < ApplicationController
  # new
  # create
  # destroy

  def new
  end

  def create
    if User.find_by(username: (params[:username]))
      @user = User.find_by(username: (params[:username]))
      @user.authenticate(params[:password])
      @user = session[:user]
      flash[:notice] = "You have successfully logged in!"
      redirect_to root_path

    else
      flash[:error] = "There's something wrong with your username or password."
      render :create
    end
  end

  def destroy
  end
end