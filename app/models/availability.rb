class Availability < ApplicationRecord
  belongs_to :talent, dependent: :destroy
end
