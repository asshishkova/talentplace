class Genre < ApplicationRecord
  has_many :place_genres, dependent: :destroy
  has_many :talent_genres, dependent: :destroy
end
