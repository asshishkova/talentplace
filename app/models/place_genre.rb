class PlaceGenre < ApplicationRecord
  belongs_to :genre
  belongs_to :place
end
