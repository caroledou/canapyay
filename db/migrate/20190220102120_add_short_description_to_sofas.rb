class AddShortDescriptionToSofas < ActiveRecord::Migration[5.2]
  def change
    add_column :sofas, :short_description, :text
  end
end
