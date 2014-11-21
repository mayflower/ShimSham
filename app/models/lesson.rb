class Lesson < ActiveRecord::Base
  belongs_to :DanceClass
  belongs_to :Students
  belongs_to :Instructors
end
