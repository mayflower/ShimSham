json.array!(@units) do |unit|
  json.extract! unit, :id, :unit_template_id, :instructor_id, :students_id, :room_id
  json.url unit_url(unit, format: :json)
end
