class BookingsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
