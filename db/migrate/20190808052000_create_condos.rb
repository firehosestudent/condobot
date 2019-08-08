class CreateCondos < ActiveRecord::Migration[5.0]
  def change
    create_table :condos do |t|

      t.string :name
      t.text :description
      t.string :intersection
      t.string :address
      t.string :builder
      t.string :city
      t.decimal :cost1bed
      t.decimal :cost1bedden
      t.decimal :cost2bed
      t.decimal :cost2bedden
      t.decimal :cost3bed
      t.decimal :cost3bedden
      t.integer :occupancy


      t.timestamps
    end
  end
end
