class Unit < ActiveRecord::Base
  belongs_to :offer
  belongs_to :instructor
  belongs_to :room
  has_and_belongs_to_many :students
end
