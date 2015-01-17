class UnitTemplate < ActiveRecord::Base
  belongs_to :offer
  has_many :units
  has_many :lessons
end
