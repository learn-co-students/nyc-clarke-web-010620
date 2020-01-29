class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.integer :experience 
      t.string :img_url
    
      t.timestamps
    end
    
  end
end
