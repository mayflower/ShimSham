class Lesson < ActiveRecord::Base
  belongs_to DanceClass
  has_and_belongs_to_many Student
  has_and_belongs_to_many Instructor
end
