class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_review, only: %i[show destroy update edit]

  def show
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    authorize @review
    if @review.save
      flash[:notice] = "Thank you for your contribution !"
      redirect_to offer_path(@review.booking.offer)
    else
      flash[:alert] = "Something went wrong."
      # render :new, @booking: Booking.find(params[:booking_id])
    end
  end

  def destroy
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    @offer = @booking.offer
    authorize @review
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
    params.require(:review).permit(:rating, :comment, :booking)
  end
end
