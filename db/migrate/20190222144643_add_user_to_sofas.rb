class AddUserToSofas < ActiveRecord::Migration[5.2]
  def change
     add_reference :sofass, :user, index: true
  end
end
