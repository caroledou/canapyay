class BookingsController < ApplicationController
  def new
    @sofa = Sofa.find(params[:sofa_id])
    @booking = Booking.new
  end

  def create
    @sofa = Sofa.find(params[:sofa_id])
    @booking = Booking.new(booking_params)
    @booking.sofa = @sofa
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :sofa_id, :user_id)
  end
end
