class Sofa < ApplicationRecord
  validates :name, :description, :capacity, :price_per_day, :location, presence: true
end
