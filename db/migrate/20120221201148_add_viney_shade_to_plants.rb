class AddVineyShadeToPlants < ActiveRecord::Migration
  def self.up 
    add_column :plants, :viney_shade, :string
  end

  def self.down  
    remove_column :plants, :viney_shade
  end
end
