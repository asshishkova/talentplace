class Place::PagesController < ApplicationController
  def dashboard
    @bookings = current_place.bookings.order(:date)
    @promotions = current_place.promotions.order(created_at: :desc)
  end
end
