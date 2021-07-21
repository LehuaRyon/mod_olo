class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in, only: [:new, :create, :edit, :update]
    before_action :set_pizza

    def index

    end

    def new

    end

    def create

    end
end