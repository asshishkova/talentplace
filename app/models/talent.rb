class Talent < ApplicationRecord
  has_many :availabilities
  has_many :bookings
  has_many :promotions
  has_many :talentgenres
end
