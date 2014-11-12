class Instructor < ActiveRecord::Base
  validates :name, presence: true
end
