class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
  end

  def new
    @booking = Booking.new
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    # params.require(:booking).permit(:name, :dose, :photo)
  end
end
