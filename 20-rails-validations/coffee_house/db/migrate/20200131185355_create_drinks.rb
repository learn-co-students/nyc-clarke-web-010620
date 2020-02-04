class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.boolean :hot, default: true
      t.string :name
      t.string :img_url
      t.string :description

      t.timestamps
    end
  end
end
