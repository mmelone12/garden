class PlantGroup < ActiveRecord::Base                  
  
  belongs_to :project
  has_many :plants
end
