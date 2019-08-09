class AlterPlacesAddUserIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :condos, :user_id, :integer
    add_index :condos, :user_id
  end
end
