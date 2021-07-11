class UsersController < ApplicationController
    # before_action :redirect_if_not_logged_in, except: [:new, :create]
    before_action :set_user, except: [:new, :create]

    def new
        if !logged_in?
            @user = User.new
        else
            redirect_to pizzas_path
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        redirect_if_not_logged_in
        # @user = User.find_by_id(params[:id])
        redirect_to root_path if !@user
        # protection so user never sees error page
    end

    def edit

    end

    def update

    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

    def set_user
        @user = User.find_by_id(params[:id])
    end
end
