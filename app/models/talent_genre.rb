class TalentGenre < ApplicationRecord
  belongs_to :genre
  belongs_to :talent
end
