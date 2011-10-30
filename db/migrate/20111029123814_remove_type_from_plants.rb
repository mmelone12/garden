class RemoveTypeFromPlants < ActiveRecord::Migration
  def self.up  
    remove_column :plants, :type
  end

  def self.down   
    add_column :plants, :type
  end
end
