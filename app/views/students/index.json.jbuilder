json.array!(@students) do |student|
  json.extract! student, :id, :name, :street, :zip, :city, :phone, :country, :groups_id, :DanceClasses_id, :email
  json.url student_url(student, format: :json)
end
