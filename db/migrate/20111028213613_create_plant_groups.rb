class CreatePlantGroups < ActiveRecord::Migration
  def self.up
    create_table :plant_groups do |t|
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :plant_groups
  end
end
