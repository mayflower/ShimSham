class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :DanceClass, index: true
      t.datetime :scheduled

      t.timestamps
    end
  end
end
