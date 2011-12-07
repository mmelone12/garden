class AddImageToPlants < ActiveRecord::Migration
  def self.up
    add_column :plants, :image_path, :string
  end

  def self.down
    remove_column :plants, :image_path
  end
end
