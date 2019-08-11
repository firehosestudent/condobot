class AlterCondosAddLatAndLng < ActiveRecord::Migration[5.0]
  def change
    add_column :condos, :latitude, :float
    add_column :condos, :longitude, :float
  end
end
