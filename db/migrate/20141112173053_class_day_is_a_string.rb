class ClassDayIsAString < ActiveRecord::Migration
  def change
    change_column :dance_classes, :day, :string
  end
end
