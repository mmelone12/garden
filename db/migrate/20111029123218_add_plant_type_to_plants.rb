class AddPlantTypeToPlants < ActiveRecord::Migration
  def self.up
    add_column :plants, :plant_type, :string
  end

  def self.down
    remove_column :plants, :plant_type
  end
end
