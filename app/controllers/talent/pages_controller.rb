class Talent::PagesController < ApplicationController
  def dashboard
    @bookings = current_talent.bookings.order(:date)
    @promotions = current_talent.promotions.order(created_at: :desc)
  end
end
