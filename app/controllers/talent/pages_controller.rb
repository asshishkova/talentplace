class Talent::PagesController < ApplicationController
  def dashboard
    @bookings = current_talent.bookings
  end
end
