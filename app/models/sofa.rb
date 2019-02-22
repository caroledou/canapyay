class Sofa < ApplicationRecord
  has_many :users, through: :bookings
  validates :name, :description, :capacity, :price_per_day, :address, :photo, presence: true
  validates :description, length: { maximum: 40 }
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
