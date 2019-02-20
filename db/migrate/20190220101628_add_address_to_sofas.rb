class AddAddressToSofas < ActiveRecord::Migration[5.2]
  def change
    add_column :sofas, :address, :string
  end
end
