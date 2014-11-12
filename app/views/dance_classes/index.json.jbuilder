json.array!(@dance_classes) do |dance_class|
  json.extract! dance_class, :id, :name, :level_id, :day
  json.url dance_class_url(dance_class, format: :json)
end
