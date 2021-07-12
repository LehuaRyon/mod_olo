class PizzasController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        @pizzas = Pizza.all
    end
    
    def new
        @pizza = Pizza.new
    end

    def create
        @pizza = current_user.pizzas.build(pizza_params)
        if @pizza.save
            redirect_to pizzas_path
        else
            render :new
        end
    end

    private

    def pizza_params
        params.require(:pizza).permit(:name, :ingredients, :size)
    end
end
