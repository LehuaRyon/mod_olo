class OrdersController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_order, except: [:index, :new, :create]

    def index
        @orders = Order.all
    end
    
    def new
        @order = Order.new
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
        params.require(:order).permit(:pickup_name, :special_instructions, :pizza_id)
    end

    def set_order
        @order = Order.find_by_id(params[:id])
        if !@order
            redirect_to orders_path
        end
    end
end
