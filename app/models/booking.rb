class Booking < ApplicationRecord
  belongs_to :sofa
  belongs_to :user
end
