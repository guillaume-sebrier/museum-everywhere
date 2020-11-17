class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_review, only: %i[show destroy update edit]

  def show
  end

  def create
    @review = Review.new(review_params)
    authorize @review
  end

  def destroy
  end

  def new
  end

  def update
  end

  def edit
  end

  private

  def set_review
    @reviews = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
