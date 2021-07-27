class UsersController < ApplicationController
    before_action :redirect_if_not_logged_in, except: [:new, :create]
    before_action :set_user, except: [:new, :create]

    def new
        if !logged_in?
            @user = User.new
        else
            redirect_to pizzas_path
        end
    end

    def create
        @user = User.new(user_params(:first_name, :last_name, :email, :password))
        # @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        # redirect_if_not_logged_in
        # @user = User.find_by_id(params[:id])
        redirect_to root_path if !@user
        # protection so user never sees error page
        @orders = current_user.orders
        @reviews = @user.reviews
    end

    def edit
        if @user.id == current_user.id
            render :edit
        else
            # flash[:error] = "You cannot make this change. You are not the owner."
            redirect_to user_path(@user)
        end
    end

    def update
        if @user.update(user_params(:email, :password))
        # if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user.destroy if @user.id == current_user.id
        redirect_to signup_path
    end

    private

    # def user_params
    #     params.require(:user).permit(:first_name, :last_name, :email, :password)
    # end

    def user_params(*args)
        params.require(:user).permit(*args)
    end

    def set_user
        @user = User.find_by_id(params[:id])
    end
end
