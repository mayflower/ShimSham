class DanceClass < ActiveRecord::Base
  has_and_belongs_to_many :room
  has_and_belongs_to_many :group
end
