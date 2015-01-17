json.array!(@unit_templates) do |unit_template|
  json.extract! unit_template, :id, :offer_id, :price, :duration, :max_students, :unit_interval, :lesson_interval
  json.url unit_template_url(unit_template, format: :json)
end
