class SessionsController < ApplicationController
  # new
  # create
  # destroy

  def new
  end

  def create
    @user = User.find_by(username: (params[:username]))
    if @user && @user.authenticate(params[:password])
      session[:user] = @user
      params.delete :username
      params.delete :password
      flash[:notice] = "You have successfully logged in as #{current_user.username}!"
      redirect_to root_path
    else
      flash[:error] = "There's something wrong with your username or password."
      params.delete :username
      params.delete :password
      render :new
    end
  end

  def destroy
    session.delete(:user)
    if session[:user] == nil
      flash[:notice] = "You've successfully logged out!"
      redirect_to root_path
    else
      flash[:error] = "You didn't log out!"
      redirect_to root_path
    end
  end
end