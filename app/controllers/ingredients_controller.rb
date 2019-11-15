class IngredientsController < ApplicationController
    before_action :authorized
    before_action :find_ingredients, only: [:show, :edit, :update, :destroy]

    def index
        @ingredients = Ingredient.all
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.create(ingredient_params)
        redirect_to ingredient_path(@ingredient)
    end

    def show
    end

    def edit
    end

    def update
        @ingredient.update(ingredient_params)
        redirect_to ingredient_path
    end

    def destroy
        @ingredient.destroy
        redirect_to ingredients_path
    end

    private

    def find_ingredients
    @ingredient = Ingredient.find_by(:id => params[:id])
    end

    def ingredient_params 
    strong_params = params.require(:ingredient).permit(:name, :specifics, :food_id)
    end
end
