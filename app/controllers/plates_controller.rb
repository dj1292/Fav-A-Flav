class PlatesController < ApplicationController
    before_action :find_plate, only: [:show, :edit, :update, :destroy]
    before_action :authorized
def index
    @plates = Plate.all
end

def new
    @plate = Plate.new
end

def create
    @plate = Plate.create(plate_params)
    if @plate
    redirect_to plate_path(@plate.id)
    end
end

def show
end

def edit
end

def update
    @plate.update(plate_params)
    redirect_to plate_path(@plate)
end

def destroy
    @plate.destroy
    redirect_to plates_path
end

private

def find_plate
    @plate = Plate.find_by(:id => params[:id])
end

def plate_params 
    params.require(:plate).permit(:name, :category, :user_id)
end
    
end
