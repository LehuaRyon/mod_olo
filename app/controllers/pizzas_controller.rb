class PizzasController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_pizza, except: [:index, :new, :create]

    def index
        @pizzas = Pizza.all
    end
    
    def new
        @pizza = Pizza.new
    end

    def create
        @pizza = current_user.pizzas.build(pizza_params)
        if @pizza.save
            redirect_to pizza_path(@pizza)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    private

    def pizza_params
        params.require(:pizza).permit(:name, :ingredients, :size)
    end

    def set_pizza
        @pizza = Pizza.find_by_id(params[:id])
    end
end
