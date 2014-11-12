class AddDayToDanceClass < ActiveRecord::Migration
  def change
    add_column :dance_classes, :day, :string
  end
end
