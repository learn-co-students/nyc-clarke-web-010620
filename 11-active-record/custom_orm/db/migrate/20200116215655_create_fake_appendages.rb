class CreateFakeAppendages < ActiveRecord::Migration[5.2]
  def change
    create_table :fake_appendages do |t|
      t.string :body_part
      t.string :material
      t.string :color
 
      t.timestamps
    end
  end
end
