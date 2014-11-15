json.array!(@lessons) do |lesson|
  json.extract! lesson, :id
  json.url lesson_url(lesson, format: :json)
end
