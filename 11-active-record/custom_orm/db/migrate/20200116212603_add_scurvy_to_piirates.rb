class AddScurvyToPiirates < ActiveRecord::Migration[5.2]
  def change
    add_column :pirates, :scurvy, :boolean
  end
end
