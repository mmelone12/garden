class RemoveColumnFromPlantGroups < ActiveRecord::Migration
  def self.up
    remove_column :plant_groups, :project_id
  end

  def self.down
    add_column :plant_groups, :project_id, :integer
  end
end
