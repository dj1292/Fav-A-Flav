class SessionsController < ApplicationController

def new
end

def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to @user
    else
        flash[:error] = "Please try again."
        redirect_to login_path
    end 
end

def destroy
    session[:user_id] = nil
    redirect_to login_path
end

    private

    def session_params
    params.permit(:username, :password)
    end 
end
