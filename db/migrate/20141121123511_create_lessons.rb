class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :DanceClass, index: true
      t.references :Students, index: true
      t.references :Instructors, index: true
      t.datetime :scheduled

      t.timestamps
    end
  end
end
