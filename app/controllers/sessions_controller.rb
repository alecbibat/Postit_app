class SessionsController < ApplicationController
  # new
  # create
  # destroy

  def new
  end

  def create
    @user = User.find_by(username: (params[:username]))
    if @user && @user.authenticate(params[:password])
      @user = session[:user]
      flash[:notice] = "You have successfully logged in!"
      redirect_to root_path
      params.delete :username
      params.delete :password
    else
      flash[:error] = "There's something wrong with your username or password."
      params.delete :username
      params.delete :password
      render :new
    end
  end

  def destroy
    session.delete :user
    if session[:user] == nil
      flash[:notice] = "You've successfully logged out!"
    else
      flash[:error] = "You didn't log out!"
      redirect_to root_path
    end
  end
end