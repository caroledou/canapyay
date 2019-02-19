class ChangeEndDateToBeStringInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :end_date, :string
  end
end
