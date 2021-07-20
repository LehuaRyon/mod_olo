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
      redirect_to user_path(user)
      # redirect_to pizzas_path
      # , notice: "You have successfully logged in!"
    else
      flash[:error] = 'Login attempt for a nonexistent user. Please try again.'
      redirect_to login_path
      # , alert: "Login attempt for a nonexistent user. Please try again."
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  def omniauth
    @user = User.from_google_omniauth(auth)
    # @user = User.find_or_create_by(uid: auth[:uid]) do |u|
    #   u.first_name = auth[:info][:first_name]
    #   u.last_name = auth[:info][:last_name]
    #   u.email = auth[:info][:email]
    #   u.password = SecureRandom.hex(10)
    # end
    # if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    # else
    #   redirect_to root_path
    # end
  end

  private 

  def auth
    request.env['omniauth.auth']
  end


end
