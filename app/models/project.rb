class Project < ActiveRecord::Base                    
  attr_accessible :title, :address, :latitude, :longitude, :state      
  
  belongs_to :user        
  has_many :prelationships, :foreign_key => "pfollower_id",
                            :dependent => :destroy   
  has_many :pfollowing, :through => :prelationships, :source => :pfollowed 
   

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
  
  def pfollowing?(pfollowed)
    prelationships.find_by_pfollowed_id(pfollowed)  
  end  
  
  def pfollow!(pfollowed)
    prelationships.create!(:pfollowed_id => pfollowed.id)
  end       
end