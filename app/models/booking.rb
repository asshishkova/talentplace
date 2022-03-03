class Booking < ApplicationRecord
  belongs_to :talent
  belongs_to :place
end
