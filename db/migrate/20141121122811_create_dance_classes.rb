class CreateDanceClasses < ActiveRecord::Migration
  def change
    create_table :dance_classes do |t|
      t.string :name
      t.integer :duration
      t.decimal :price
      t.integer :max_students
      t.text :description
      t.references :room, index: true
      t.references :group, index: true

      t.timestamps
    end
  end
end
