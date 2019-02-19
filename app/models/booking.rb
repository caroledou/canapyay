class Booking < ApplicationRecord
  belongs_to :sofa
  belongs_to :user
  validates :start_date, :end_date, presence: true
  validates :start_date, :end_date, format: { with: /\w{2}\/\w{2}\/20\w{2}/ }
end
