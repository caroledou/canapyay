class Sofa < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :description, :capacity, :price_per_day, :location, :photo, presence: true
  validates :description, length: { maximum: 40 }
  mount_uploader :photo, PhotoUploader
end
