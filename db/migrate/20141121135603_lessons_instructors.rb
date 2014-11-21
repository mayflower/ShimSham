class LessonsInstructors < ActiveRecord::Migration
  def change
    create_table :lessons_instructors, id: false do |t|
      t.integer :lessons_id
      t.integer :instructors_id
    end
  end
end
