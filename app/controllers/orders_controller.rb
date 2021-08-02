class OrdersController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_order, except: [:index, :new, :create]

    def index
        if params[:pizza_id] && pizza = Pizza.find_by_id(params[:pizza_id])
            @orders = pizza.orders
        else
            if params[:search]
                @orders = Order.search_by_last_name(params[:search]).order_by_created_at
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
            @order.build_pizza
        end
    end

    def create
        @order = current_user.orders.build(order_params)
        if @order.save
            flash[:order_created] = "Order has been placed successfully!"
            redirect_to order_path(@order)
        else
            @order.build_pizza unless @order.pizza
            render :new
        end
    end

    def show
    end

    def edit
        if @order.user_id == current_user.id
            render :edit
        else
            flash[:cannot_change_orders] = "You cannot make this change. You are not the owner."
            redirect_to orders_path
        end
    end

    def update
        if @order.update(order_params)
            flash[:order_edited] = "Order has been updated successfully!"
            redirect_to order_path(@order)
        else
            render :edit
        end
    end

    def destroy
        # current_user == order.user
        @order.destroy if @order.user.id == current_user.id
        redirect_to orders_path
    end

    private

    def order_params
        params.require(:order).permit(:pickup_name, :special_instructions, :size, :search, :pizza_id, pizza_attributes: [:name, :ingredients, :size])
    end

    def set_order
        @order = Order.find_by_id(params[:id])
        if !@order
            flash[:order_not_found] = "Order does not exist."
            redirect_to orders_path
        end
    end
end
