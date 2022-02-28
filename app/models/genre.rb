class Genre < ApplicationRecord
  has_many :placegenres
  has_many :talentgenres
end
