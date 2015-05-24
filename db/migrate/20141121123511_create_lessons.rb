class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :dance_class, index: true
      t.datetime :scheduled
      t.timestamps
    end
  end
end
