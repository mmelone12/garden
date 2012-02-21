class AddColumnToPlants < ActiveRecord::Migration
  def self.up 
    add_column :plants, :group, :string   
    add_column :plants, :annualperennial, :string
    add_column :plants, :height, :integer
    add_column :plants, :diameter, :integer
    add_column :plants, :bush_plant_tree, :string
    add_column :plants, :sow_inside_outside, :string
    add_column :plants, :germination_minimum, :integer
    add_column :plants, :germination_maximum, :integer
    add_column :plants, :sow_inches_apart_min, :integer       
    add_column :plants, :sow_inches_apart_max, :integer
    add_column :plants, :plant_rows_apart_min, :integer
    add_column :plants, :plant_rows_apart_max, :integer
    add_column :plants, :plant_inches_deep, :decimal
    add_column :plants, :thin_inches_apart_min, :integer
    add_column :plants, :thin_inches_apart_max, :integer
    add_column :plants, :sow_days_after_last_frost, :integer
    add_column :plants, :transplant_outside, :integer
    add_column :plants, :harvest_min, :integer
    add_column :plants, :harvest_max, :integer
    add_column :plants, :min_temp, :integer
    add_column :plants, :hardiness_min, :integer
    add_column :plants, :hardiness_max, :integer
    add_column :plants, :determinate_indeterminate, :string
    add_column :plants, :support_type, :string
    add_column :plants, :sun_needs, :string
    add_column :plants, :soil_quality, :string
    add_column :plants, :soil_moisture, :string
    add_column :plants, :soil_acidity, :string
    add_column :plants, :nitrogen_fixer, :string
    add_column :plants, :casts_shade, :string
    add_column :plants, :sprawls, :string
    add_column :plants, :acts_as_support, :string
    add_column :plants, :viney, :string
    add_column :plants, :insectiary, :string
    add_column :plants, :insectiary_attracts, :string
    add_column :plants, :mulcher, :string
    add_column :plants, :medicinal, :string
    add_column :plants, :edible, :string
    add_column :plants, :edible_how, :string
    add_column :plants, :root_description, :string
    add_column :plants, :description, :text
    add_column :plants, :warning, :text
  end

  def self.down    
    remove_column :plants, :group  
    remove_column :plants, :annualperennial
    remove_column :plants, :height
    remove_column :plants, :diameter
    remove_column :plants, :bush_plant_tree
    remove_column :plants, :sow_inside_outside
    remove_column :plants, :germination_minimum
    remove_column :plants, :germination_maximum
    remove_column :plants, :sow_inches_apart_min       
    remove_column :plants, :sow_inches_apart_max
    remove_column :plants, :plant_rows_apart_min
    remove_column :plants, :plant_rows_apart_max
    remove_column :plants, :plant_inches_deep
    remove_column :plants, :thin_inches_apart_min
    remove_column :plants, :thin_inches_apart_max
    remove_column :plants, :sow_days_after_last_frost
    remove_column :plants, :transplant_outside
    remove_column :plants, :harvest_min
    remove_column :plants, :harvest_max
    remove_column :plants, :min_temp
    remove_column :plants, :hardiness_min
    remove_column :plants, :hardiness_max
    remove_column :plants, :determinate_indeterminate
    remove_column :plants, :support_type
    remove_column :plants, :sun_needs
    remove_column :plants, :soil_quality
    remove_column :plants, :soil_moisture
    remove_column :plants, :soil_acidity
    remove_column :plants, :nitrogen_fixer
    remove_column :plants, :casts_shade
    remove_column :plants, :sprawls
    remove_column :plants, :acts_as_support
    remove_column :plants, :viney
    remove_column :plants, :insectiary
    remove_column :plants, :insectiary_attracts
    remove_column :plants, :mulcher
    remove_column :plants, :medicinal
    remove_column :plants, :edible
    remove_column :plants, :edible_how
    remove_column :plants, :root_description
    remove_column :plants, :description
    remove_column :plants, :warning
  end
end
