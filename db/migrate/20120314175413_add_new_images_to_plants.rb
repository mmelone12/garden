class AddNewImagesToPlants < ActiveRecord::Migration
  def self.up  
    add_column :plants, :twobyfourimagepath, :string
  end

  def self.down 
    remove_column :plants, :twobyfourimagepath
  end
end
