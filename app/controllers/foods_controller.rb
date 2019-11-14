class FoodsController < ApplicationController
    before_action :authorized
    before_action :find_food, only: [:show, :edit, :update, :destroy]

    def index
        @foods = Food.all
    end

    def new
        @food = Food.new
    end

    def create
        @food = Food.create(food_params)
        redirect_to food_path(@food)
    end

    def show
    end

    def edit
    end

    def update
        @food.update(food_params)
        redirect_to food_path
    end

    def destroy
        @food.destroy
        redirect_to foods_path
    end

    private

    def find_food 
        @food = Food.find_by(:id => params[:id])
    end

    def food_params
        strong_params = params.require(:food).permit(:name, :plate_id)
    end
end
