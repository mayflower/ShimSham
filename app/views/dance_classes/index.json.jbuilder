json.array!(@dance_classes) do |dance_class|
  json.extract! dance_class, :id, :name, :duration, :price, :max_students, :description, :room_id, :group_id
  json.url dance_class_url(dance_class, format: :json)
end
