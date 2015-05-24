class Lessons < ActiveRecord::Migration
  def change
    change_table :lessons do |t|
      t.references :room
    end
  end
end
