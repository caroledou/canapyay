class RenameStartDateColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :star_date, :start_date
  end
end
