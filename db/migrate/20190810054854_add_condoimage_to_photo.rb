class AddCondoimageToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :condoimage, :string
  end
end
