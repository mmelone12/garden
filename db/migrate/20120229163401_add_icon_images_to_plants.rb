class AddIconImagesToPlants < ActiveRecord::Migration
  def self.up    
    add_column :plants, :icon_image, :string
    add_column :plants, :icontitle_image, :string
  end

  def self.down 
    remove_column :plants, :icon_image
    remove_column :plants, :icontitle_image
  end
end
