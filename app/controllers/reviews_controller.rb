class ReviewsController < ApplicationController
    before_action :authorized
    before_action :find_review, only: [:show, :edit, :update, :destroy]

    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        redirect_to review_path(@review)
    end

    def show
    end

    def edit
    end

    def update
        @review.update(review_params)
        redirect_to review_path
    end

    def destroy
        @review.destroy
        redirect_to user_path(@user)
    end

    private

    def find_review
    @review = Review.find_by(:id => params[:id])
    end

    def review_params 
    strong_params = params.require(:review).permit(:title, :content, :user_id, :plate_id)
    end
end
