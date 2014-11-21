class InstructorsLessons < ActiveRecord::Migration
  def change
    create_table :instructors_lessons, id: false do |t|
      t.integer :lesson_id
      t.integer :instructor_id
    end
  end
end
