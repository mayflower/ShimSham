json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :dance_class_id, :Students_id, :Instructors_id, :scheduled
  json.url lesson_url(lesson, format: :json)
end
