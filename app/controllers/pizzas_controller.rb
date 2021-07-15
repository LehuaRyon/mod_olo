class PizzasController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_pizza, except: [:index, :new, :create]

    def index
        if params[:search]
            @pizzas = Pizza.search_by_pizza_name(params[:search])
        else
            @pizzas = Pizza.all
        end
    end
    
    def new
        @pizza = Pizza.new
    end

    def create
        @pizza = current_user.pizzas.build(pizza_params) #change bc order is the join model, change to norm
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

    def update
        if @pizza.update(pizza_params)
            redirect_to pizza_path(@pizza)
        else
            render :edit
        end
    end

    def destroy
        @pizza.destroy
        redirect_to pizzas_path
    end

    private

    def pizza_params
        params.require(:pizza).permit(:name, :ingredients, :size)
    end

    def set_pizza
        @pizza = Pizza.find_by_id(params[:id])
        if !@pizza
            redirect_to pizzas_path
        end
    end
end
