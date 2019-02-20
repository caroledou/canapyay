class Sofa < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, :description, :capacity, :price_per_day, :location, :photo, presence: true
  validates :description, length: { maximum: 40 }
  mount_uploader :photo, PhotoUploader
end
