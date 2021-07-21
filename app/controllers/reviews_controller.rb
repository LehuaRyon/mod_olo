class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in, only: [:new, :create, :edit, :update]
    before_action :set_pizza

    def index
        if @pizza
            @reviews = @pizza.reviews
        else
            redirect_to pizzas_path
        end
    end

    def new
        # @review = Review.new(pizza: @pizza)
        @review = @pizza.reviews.build
    end

    def create

    end

    private

    def set_pizza
        @pizza = Pizza.find_by_id(params[:pizza_id])
        if !@pizza
            redirect_to pizzas_path
        end
    end
end