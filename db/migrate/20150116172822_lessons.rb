class Lessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.datetime :sceduled
      t.references :room

      t.timestamps
    end
  end
end
