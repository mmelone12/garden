class Project < ActiveRecord::Base
  attr_accessible :title, :address, :latitude, :longitude, :state      
  
  belongs_to :user
  
  geocoded_by :address
  
  def geocoded_by(address_attr, options = {}, &block)
    geocoder_init(
      :geocode       => true,
      :user_address  => address_attr,
      :latitude      => options[:latitude]  || :latitude,
      :longitude     => options[:longitude] || :longitude,
      :geocode_block => block
    )
  end
    
  after_validation :geocode     
    
end
