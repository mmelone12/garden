class AddColumnToPlants < ActiveRecord::Migration
  def self.up    
    add_column :plants, :annualperennial, :string
    add_column :plants, :soil_type, :string
    add_column :plants, :hardiness_range, :integer
    add_column :plants, :indoorsoutdoors, :string
    add_column :plants, :sow_from_last_front, :integer
    add_column :plants, :harvest_from_sowing, :integer
    add_column :plants, :determinateindeterminate, :string
    add_column :plants, :type_of_support, :string         
    add_column :plants, :nitrogen_fixer, :string
    add_column :plants, :cast_shade, :string
    add_column :plants, :sprawls, :string
    add_column :plants, :viney, :string
    add_column :plants, :insectiary, :string
    add_column :plants, :mulcher, :string
    add_column :plants, :deepshallowroot, :string
    add_column :plants, :medicinal, :string
    add_column :plants, :harvest_from_last_frost, :integer
    add_column :plants, :how_much_sun, :string
    add_column :plants, :soil_quality, :string
    add_column :plants, :soil_acidity, :string
    add_column :plants, :warning, :string
    add_column :plants, :bush_plant, :string
    add_column :plants, :edible, :string
    add_column :plants, :height, :integer
  end

  def self.down    
    remove_column :plants, :annualperennial
    remove_column :plants, :soil_type
    remove_column :plants, :hardiness_range
    remove_column :plants, :indoorsoutdoors
    remove_column :plants, :sow_from_last_front
    remove_column :plants, :harvest_from_sowing
    remove_column :plants, :determinateindeterminate
    remove_column :plants, :type_of_support        
    remove_column :plants, :nitrogen_fixer
    remove_column :plants, :cast_shade
    remove_column :plants, :sprawls
    remove_column :plants, :viney
    remove_column :plants, :insectiary
    remove_column :plants, :mulcher
    remove_column :plants, :deepshallowroot
    remove_column :plants, :medicinal
    remove_column :plants, :harvest_from_last_frost
    remove_column :plants, :how_much_sun
    remove_column :plants, :soil_quality
    remove_column :plants, :soil_acidity
    remove_column :plants, :warning
    remove_column :plants, :bush_plant
    remove_column :plants, :edible
    remove_column :plants, :height
  end
end
