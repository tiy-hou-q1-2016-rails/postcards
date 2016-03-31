class SessionsController < ApplicationController
  def new
  end

  def create
    @current_user = User.find_by email: params[:email]
    if @current_user && @current_user.authenticate(params[:password])
      session[:user_id] = @current_user.id
      redirect_to root_path, notice: "Welcome Back! You're Signed In!"
    else
      flash.now[:alert] = "There's something wrong with either your email or password"
      render :new
    end
  end

  def delete
    session.delete(:user_id)
    redirect_to root_path, notice: "You are now signed out"
  end
end
