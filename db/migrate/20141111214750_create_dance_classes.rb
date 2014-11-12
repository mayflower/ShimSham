class CreateDanceClasses < ActiveRecord::Migration
  def change
    create_table :dance_classes do |t|
      t.string :name
      t.integer :level_id
      t.date :day

      t.timestamps
    end
  end
end
