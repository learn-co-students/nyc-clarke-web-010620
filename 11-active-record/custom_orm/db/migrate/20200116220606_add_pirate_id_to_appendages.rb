class AddPirateIdToAppendages < ActiveRecord::Migration[5.2]
  def change
    add_column :fake_appendages, :pirate_id, :integer
  end
end
