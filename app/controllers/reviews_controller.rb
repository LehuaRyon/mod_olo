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
        # @review = Review.new(review_params)
        # @review = @pizza.reviews.build(review_params) to this instead:
        @review = current_user.reviews.build(review_params)
        # handling both associations at once, connected to pizza and user
        @review.pizza = @pizza
        if @review.save
            redirect_to pizza_path(@review.pizza)
        else
            # set_pizza
            # @pizza.reviews.build
            render :new
        end
    end

    private

    def set_pizza
        @pizza = Pizza.find_by_id(params[:pizza_id])
        if !@pizza
            redirect_to pizzas_path
        end
    end
end