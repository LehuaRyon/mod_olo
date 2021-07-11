class PizzasController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @pizza = Pizza.new
    end
end
