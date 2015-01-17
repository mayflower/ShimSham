json.array!(@units) do |unit|
  json.extract! unit, :id, :UnitTemplate_id, :Instructor_id, :students_id, :room_id
  json.url unit_url(unit, format: :json)
end
