class Promotion < ApplicationRecord
  belongs_to :place, dependent: :destroy
  belongs_to :talent, dependent: :destroy
end
