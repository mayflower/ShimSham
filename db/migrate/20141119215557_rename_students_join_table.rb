class RenameStudentsJoinTable < ActiveRecord::Migration
  def change
    rename_table :students_lessons, :lessons_students
  end
end
