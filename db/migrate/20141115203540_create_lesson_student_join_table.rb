class CreateLessonStudentJoinTable < ActiveRecord::Migration
  def change
    create_table :students_lessons, :id => false do |t|
      t.integer :lesson_id
      t.integer :student_id
    end
  end
end
