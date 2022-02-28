class Genre < ApplicationRecord
  has_many :place_genres
  has_many :talent_genres
end
