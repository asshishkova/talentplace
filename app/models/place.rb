class Place < ApplicationRecord
  has_many :bookings
  has_many :placegenres
  has_many :promotions
end
