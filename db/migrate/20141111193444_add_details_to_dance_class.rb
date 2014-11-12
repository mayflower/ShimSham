class AddDetailsToDanceClass < ActiveRecord::Migration
  def change
    add_column :dance_classes, :level_id, :integer
  end
end
