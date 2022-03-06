class Talent::PagesController < ApplicationController
  def dashboard
    @bookings = current_talent.bookings
    @promotions = current_talent.promotions
  end
end
