class CreateUnitTemplates < ActiveRecord::Migration
  def change
    create_table :unit_templates do |t|
      t.references :offer, index: true
      t.float :price
      t.integer :duration
      t.integer :max_students
      t.string :unit_interval
      t.string :lesson_interval

      t.timestamps
    end
  end
end
