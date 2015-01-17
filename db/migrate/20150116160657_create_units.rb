class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.references :unit_template, index: true
      t.references :instructor, index: true
      t.references :room, index: true

      t.timestamps
    end
  end
end
