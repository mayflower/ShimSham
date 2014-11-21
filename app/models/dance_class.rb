class DanceClass < ActiveRecord::Base
  belongs_to :room
  belongs_to :group
  has_many :lessons
  has_and_belongs_to_many :students
  has_and_belongs_to_many :instructors
end
