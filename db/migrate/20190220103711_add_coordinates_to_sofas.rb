class AddCoordinatesToSofas < ActiveRecord::Migration[5.2]
  def change
    add_column :sofas, :latitude, :float
    add_column :sofas, :longitude, :float
  end
end
