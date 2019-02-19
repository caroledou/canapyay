class Sofa < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, :description, :capacity, :price_per_day, :location, presence: true
end
