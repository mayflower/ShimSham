class Student < ActiveRecord::Base
  has_and_belongs_to_many :lessons
  has_and_belongs_to_many :dance_class
  belongs_to :group
end
