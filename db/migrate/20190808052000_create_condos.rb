class CreateCondos < ActiveRecord::Migration[5.0]
  def change
    create_table :condos do |t|

      t.string :name
      t.text :description
      t.string :intersection
      t.string :address
      t.string :builder
      t.string :city
      t.integer :cost1bed
      t.integer :cost1bedden
      t.integer :cost2bed
      t.integer :cost2bedden
      t.integer :cost3bed
      t.integer :cost3bedden
      t.integer :occupancy


      t.timestamps
    end
  end
end
