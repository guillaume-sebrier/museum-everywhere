class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @offer = Offer.find(params[:offer_id])
    authorize @booking
    @booking.offer = @offer
    @booking.user = current_user
    @booking.status = "On hold"
    if @booking.save!
      redirect_to dashboard_path
      flash[:notice] = "Your booking is awaiting confirmation !"
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    authorize @booking
    redirect_to dashboard_path
    flash[:notice] = "Booking Confirmed !"
  end

  def new
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
    authorize @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:starting_time, :ending_time, :number_visitors, :status)
  end
end
