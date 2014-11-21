class DanceClassRooms < ActiveRecord::Migration
  def change
    create_table :dance_classes_rooms, id: false do |t|
      t.integer :dance_class_id
      t.integer :room_id
    end
  end
end
