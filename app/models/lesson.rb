class Lesson < ActiveRecord::Base
  belongs_to :unit
  has_and_belongs_to_many :students
  has_and_belongs_to_many :instructors
end
