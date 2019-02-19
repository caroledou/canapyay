class ChangeStartDateToBeStringInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :star_date, :string
  end
end
