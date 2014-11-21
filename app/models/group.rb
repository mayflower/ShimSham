class Group < ActiveRecord::Base
  has_many :dance_classes
  has_many :students
end