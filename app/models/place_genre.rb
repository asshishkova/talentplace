class PlaceGenre < ApplicationRecord
  belongs_to :genre, dependent: :destroy
  belongs_to :place, dependent: :destroy
end
