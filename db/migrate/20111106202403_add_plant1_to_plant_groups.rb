class AddPlant1ToPlantGroups < ActiveRecord::Migration
  def self.up
    add_column :plant_groups, :plant1, :integer
  end

  def self.down
    remove_column :plant_groups, :plant1
  end
end
