class Project < ActiveRecord::Base                     
  attr_accessible :title, :address, :latitude, :longitude, :state      
  
  belongs_to :user        
  has_many :prelationships, :foreign_key => "pfollower_id",
                            :dependent => :destroy   
  has_many :pfollowing, :through => :prelationships, :source => :pfollowed 
   

  geocoded_by :address do |project,results|
    if geo = results.first
      project.state = geo.state
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
  
  def sowing_lines
    #@project = Project.find(params[:id])
    #@plants = @project.pfollowing.paginate(:page => params[:page])     
    #@first_sower = @project.pfollowing(:order => "sow_days_after_last_frost").last
    #"Begin by " 
    #@second_sower =  
  end
  
  def first_lines_sowing_inside 
    if self.pfollowing.count < 9
      plant1 = self.pfollowing(:order => "sow_inside_outside").first 
    "First take care of #{plant1.name}"   
  else
    "Uh-oh"
  end
    #@plants = @project.pfollowing.where(:inside_outside => "Inside", 
    #:order => "sow_days_after_last_frost")

    #@project.state(frost_date) + @plants.first(:sow_min) 

    #if @plants.count(:inside_outside) >= 2

    #First, find yourself some seedling trays. You can buy cheap plastic ones
    #from wherever garden materials are sold, but consider a more sustainable
    #option like using old paper coffee cups, paper rolls or even an egg carton.
    #(<link_to(a href="trayguide", "Click here for more info.">))

   #end

    #if @plants.count(:inside_outside) = 1

    #First, find yourself some seedling trays for your @plants seeds. You can buy 
    #plastic ones from wherever garden materials are sold, but consider a 
    #more sustainable (and cheaper) option like using old paper coffee cups, 
    #paper rolls or even an egg carton.
    #(<link_to(a href="trayguide", "Click here for more info.">))
    #end

    #if @plants.count(:inside_outside) >= 2

    #{}"You'll want to begin your garden by sowing the <%= @plants.first(:name) %> seeds <%= @plants.first
    #(:inside_outside) %> about <%= @plants.first(:sow_min)> to <%= @plants.first
    #(:sow_max) days before the last frost (historically, in your state of
    #<%= @project.state %>, that's <%= @project.state(:state_frost_date) %> but
    #definitely check your local weather forecast.)"    
    #end

     #if <%= @plants.first(:inside_outside) = "inside")
     #First, find yourself some seedling trays for
     #if <%= @plants.count(:inside_outside) > or = 2>
     #end 
   end 
    
  def determined1a 
    self.pfollowing.order("height").last  
  end          
  
  def determined2a
    self.pfollowing.order("height").third
  end
  
  def determined3a
    self.pfollowing.order("height").second
  end
  
  def determined4a
    self.pfollowing.order("height").first
  end 
   
  def four_plantse 
    plant1 = self.pfollowing(:order => "sow_inside_outside").first  
    image_tag plant1.image_path, :class => "draggable"  
  end
end