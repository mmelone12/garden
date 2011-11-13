class Project < ActiveRecord::Base                    
  attr_accessible :title, :address, :latitude, :longitude, :state      
  
  belongs_to :user 
  has_one :plant_group

  geocoded_by :address do |project,results|
    if geo = results.first
      project.state   = geo.state
    end
  end  

  after_validation :geocode   
  
  def zone
    if self.state == "Florida"
      "Rather warm"    
    else
      "Could be cold"
    end
  end     
  
  def plant_collection
    Plant.where("project_id = ?", id) 
  end
end
