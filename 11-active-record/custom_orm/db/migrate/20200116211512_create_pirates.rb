class CreatePirates < ActiveRecord::Migration[5.2]
  def change
    create_table :pirates do |t|
      t.string :name
      t.string :ship_name
      t.boolean :booty
      t.string :location_of_treasure
 
      t.timestamps
    end
  end
end
