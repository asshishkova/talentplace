class Talent < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :availabilities
  has_many :bookings, dependent: :delete_all
  has_many :promotions, dependent: :delete_all
  has_many :talent_genres, dependent: :delete_all
  has_many :genres, through: :talent_genres

  validates :photo, presence: true

  has_one_attached :photo
end
