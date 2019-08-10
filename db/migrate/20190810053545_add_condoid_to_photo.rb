class AddCondoidToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :condo_id, :integer
  end
end
