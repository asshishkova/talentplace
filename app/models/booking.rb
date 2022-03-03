class Booking < ApplicationRecord
  belongs_to :talent, dependent: :destroy
  belongs_to :place, dependent: :destroy
end
