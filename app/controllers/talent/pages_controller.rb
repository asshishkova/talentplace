class Talent::PagesController < ApplicationController
  def dashboard

  end
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
