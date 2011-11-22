class Plant < ActiveRecord::Base      
  
  has_many :prelationships, :foreign_key => "pfollowed_id",
                            :class_name => "Prelationship"
  has_many :pfollowers, :through => :reverse_prelationships, 
                        :source => :pfollower   
end
