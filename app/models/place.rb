class Place < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :place_genres
  has_many :genres, through: :place_genres
  has_many :promotions

  validates :photo, presence: true

  has_one_attached :photo
end
