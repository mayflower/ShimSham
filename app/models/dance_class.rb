class DanceClass < ActiveRecord::Base
  belongs_to :level
  has_many :lessons
  
  validates :name, presence: true
end
