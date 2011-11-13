class AddColumnToPlantGroups < ActiveRecord::Migration
  def self.up
    add_column :plant_groups, :project_id, :integer         
  
    add_index :plant_groups, :project_id
  end

  def self.down
    remove_column :plant_groups, :project_id
  end
end
