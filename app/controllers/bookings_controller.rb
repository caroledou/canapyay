class BookingsController < ApplicationController
  def new
    # @sofa = Sofa.find(params[:sofa_id])
    # @booking = Booking.new
  end

  def create
    # @booking = Booking.find(params[:id])
    # @booking.sofa = Sofa.find(params[:sofa_id])
    # @booking.user = User.find(params[:user_id])
    # if @booking.save
    #   redirect_to booking_path
    # else
    #   render :new
    # end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  # private

  # def booking_params
  #   params.require(:booking).permit()
  # end
end
