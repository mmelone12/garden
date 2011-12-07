class Prelationship < ActiveRecord::Base                          
  attr_accessible :pfollowed_id
  
  belongs_to :pfollower, :class_name => "Project"
  belongs_to :pfollowed, :class_name => "Plant"
  
  validates :pfollower_id, :presence => true
  validates :pfollowed_id, :presence => true
end
