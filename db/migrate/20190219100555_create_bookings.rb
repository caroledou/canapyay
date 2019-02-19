class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :star_date
      t.date :end_date
      t.references :sofa, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
