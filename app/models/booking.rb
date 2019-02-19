class Booking < ApplicationRecord
  belongs_to :sofa
  belongs_to :user
  validates :start_date, :end_date, presence: true
  validates :start_date, :end_date, format: { with: /\w{2}\/\w{2}\/20\w{2}/ }
  validate :start_date_cannot_be_in_the_past
  validate :end_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date.to_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def end_date_cannot_be_in_the_past
    if end_date.present? && end_date.to_date < Date.today
      errors.add(:end_date, "can't be in the past")
    end
  end
end
