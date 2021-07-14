class OrdersController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_order, except: [:index, :new, :create]

    def index
        if params[:pizza_id] && pizza = Pizza.find_by_id(params[:pizza_id])
            @orders = pizza.orders
        else
            if params[:search]
                @orders = Order.search(params[:search]).order_by_created_at
            else
                @orders = Order.order_by_created_at
            end
        end
    end
    
    def new
        if params[:pizza_id] && pizza = Pizza.find_by_id(params[:pizza_id])
            @order = pizza.orders.build
        else
            @order = Order.new
        end
    end

    def create
        @order = current_user.orders.build(order_params)
        if @order.save
            redirect_to order_path(@order)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @order.update(order_params)
            redirect_to order_path(@order)
        else
            render :edit
        end
    end

    def destroy
        @order.destroy
        redirect_to orders_path
    end

    private

    def order_params
        params.require(:order).permit(:pickup_name, :special_instructions, :pizza_id, :search)  #, pizza_attributes: [:name, :ingredients, :size])
    end

    def set_order
        @order = Order.find_by_id(params[:id])
        if !@order
            redirect_to orders_path
        end
    end
end
