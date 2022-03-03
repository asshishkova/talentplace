class TalentGenre < ApplicationRecord
  belongs_to :genre, dependent: :destroy
  belongs_to :talent, dependent: :destroy
end
