class SessionsController < ApplicationController
  
  def new
    # @user = User.new, DO NOT NEED BC NOT CREATING NEW USER, just logging in
    if logged_in?
      redirect_to pizzas_path
    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
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
