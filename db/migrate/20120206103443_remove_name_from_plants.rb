class RemoveNameFromPlants < ActiveRecord::Migration
  def self.up
    remove_column :plants, :name
  end

  def self.down
    add_column :plants, :name, :string
  end
end
