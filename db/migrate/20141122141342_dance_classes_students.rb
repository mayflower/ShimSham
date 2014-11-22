class DanceClassesStudents < ActiveRecord::Migration
  def change
    create_table :dance_classes_students, id: false do |t|
      t.integer :dance_class_id
      t.integer :student_id
    end
  end
end
