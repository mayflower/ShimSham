class StudentsUnits < ActiveRecord::Migration
  def change
    create_table :students_units, id: false do |t|
      t.integer :student_id
      t.integer :unit_id
    end
  end
end
