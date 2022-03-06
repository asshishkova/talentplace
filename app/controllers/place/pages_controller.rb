class Place::PagesController < ApplicationController
  def dashboard
    @bookings = current_place.bookings
    @promotions = current_place.promotions
  end
end
