class PlantGroup < ActiveRecord::Base 
  attr_accessible :plant1                 
  
  belongs_to :project
  has_many :plants
end
