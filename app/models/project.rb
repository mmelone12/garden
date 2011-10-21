class Project < ActiveRecord::Base
  attr_accessible :title, :user_id, :address, :latitude, :longitude, :state     
  geocoded_by :address
  after_validation :geocode
end
