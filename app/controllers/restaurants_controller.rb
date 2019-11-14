class RestaurantsController < ApplicationController

    before_action :find_restaurant, only: [:show, :edit, :update, :delete]

    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.create(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    def show
    end

    def edit
    end

    def update
        @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    def destroy
        @restaurant.destroy
        redirect_to restaurants_path
    end

    private

    def find_restaurant
    @restaurant = Restaurant.find_by(:id => params[:id])
    end

    def restaurant_params 
    strong_params = params.require(:restaurant).permit(:name, :description)
    end
end
