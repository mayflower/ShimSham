class AddDanceClassToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :dance_class_id, :integer
  end
end
