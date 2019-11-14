class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]
    before_action :authorized, except: [:new, :create]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        # byebug
        @user = User.create(user_params)

        if @user.valid?
            @user.save
        redirect_to user_path(@user)
        else 
            redirect_to new_user_path
        end
    end

    def show
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end
    
    def destroy
        @user.destroy
        redirect_to users_path
    end

    private 

    def find_user 
        @user = User.find_by(:id => params[:id])
    end 

    def user_params
        strong_params = params.require(:user).permit(:name, :username, :password, :location, :favorite_food)
    end 
end
