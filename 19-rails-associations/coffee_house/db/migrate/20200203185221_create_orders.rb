class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :size
      t.belongs_to :user, foreign_key: true
      t.integer :drink_id

      t.timestamps
    end
  end
end
