json.array!(@levels) do |level|
  json.extract! level, :id, :name
  json.url level_url(level, format: :json)
end
