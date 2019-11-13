class SessionsController < ApplicationController

def new
end

def create
    @user = User.find_by(:username => session_params[:username])
    if @user && @user.authenticate(session_params[:password])
        session[:user_id] = @user.id
        redirect_to plates_path
    else
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
