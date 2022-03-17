class Place < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, dependent: :delete_all
  has_many :place_genres, dependent: :delete_all
  has_many :genres, through: :place_genres, dependent: :delete_all
  has_many :promotions, dependent: :delete_all

  validates :photo, presence: true

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
