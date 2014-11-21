class DanceClassesGroups < ActiveRecord::Migration
  def change
    create_table :dance_classes_groups, id: false do |t|
      t.integer :dance_class_id
      t.integer :group_id
    end
  end
end
