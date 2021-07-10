class SessionsController < ApplicationController

  def new
    @user = User.new
    if logged_in?
      redirect_to pizzas_path
    end
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to pizzas_path
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  def omniauth
  end

end
