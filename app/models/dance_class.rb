class DanceClass < ActiveRecord::Base
  belongs_to :level
  
  validates :name, presence: true
end
