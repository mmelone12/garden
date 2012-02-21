class AddManyColumnsToPlants < ActiveRecord::Migration
  def self.up 
    add_column :plants, :interesting_facts, :string
    add_column :plants, :native_to_min, :string
    add_column :plants, :native_to_max, :string
    add_column :plants, :other_skill1, :string
    add_column :plants, :other_skill2, :string
    add_column :plants, :medicinal_uses, :string
    add_column :plants, :super_plant, :string
    add_column :plants, :sow_continuously, :string
    add_column :plants, :sow_how_often, :string
    add_column :plants, :harvest_continuously, :string
    add_column :plants, :harvest_how_often, :string
    add_column :plants, :alternative_sowing_boolean, :string
    add_column :plants, :alternative_sowing_method, :string
    add_column :plants, :alternative_sow_before_lf, :integer
    add_column :plants, :pest_repellent, :string
    add_column :plants, :pest_repellent_kinds, :string
    add_column :plants, :fortress_plant, :string
    add_column :plants, :nutrient1, :string
    add_column :plants, :nutrient2, :string
    add_column :plants, :nutrient3, :string
    add_column :plants, :nutrient4, :string
    add_column :plants, :wildlife_nurturer, :string
    add_column :plants, :wildlife_kinds, :string
    add_column :plants, :spike_root, :string
    add_column :plants, :shelterbelter, :string
    add_column :plants, :perennial_certainhzs, :string
    add_column :plants, :perennial_min, :string
    add_column :plants, :perennial_max, :string
    add_column :plants, :guild_partner1, :string
    add_column :plants, :guild_partner2, :string
    add_column :plants, :guild_partner3, :string
    add_column :plants, :guild_partner4, :string
    add_column :plants, :guild_partner5, :string
    add_column :plants, :guild_partner6, :string
    add_column :plants, :fast_growing_green, :string
    add_column :plants, :early_plant, :string
    add_column :plants, :midseason_plant, :string
    add_column :plants, :slow_growing_green, :string
    add_column :plants, :fungal_pest_resistant, :string
    add_column :plants, :fungal_pest_resistant_kinds, :string
    add_column :plants, :drought_resistant, :string
  end

  def self.down  
    remove_column :plants, :interesting_facts
    remove_column :plants, :native_to_min
    remove_column :plants, :native_to_max
    remove_column :plants, :other_skill1
    remove_column :plants, :other_skill2
    remove_column :plants, :medicinal_uses
    remove_column :plants, :super_plant
    remove_column :plants, :sow_continuously
    remove_column :plants, :sow_how_often
    remove_column :plants, :harvest_continuously
    remove_column :plants, :harvest_how_often
    remove_column :plants, :alternative_sowing_boolean
    remove_column :plants, :alternative_sowing_method
    remove_column :plants, :alternative_sow_before_lf
    remove_column :plants, :pest_repellent
    remove_column :plants, :pest_repellent_kinds
    remove_column :plants, :fortress_plant
    remove_column :plants, :nutrient1
    remove_column :plants, :nutrient2
    remove_column :plants, :nutrient3
    remove_column :plants, :nutrient4
    remove_column :plants, :wildlife_nurturer
    remove_column :plants, :wildlife_kinds
    remove_column :plants, :spike_root
    remove_column :plants, :shelterbelter
    remove_column :plants, :perennial_certainhzs
    remove_column :plants, :perennial_min
    remove_column :plants, :perennial_max
    remove_column :plants, :guild_partner1
    remove_column :plants, :guild_partner2
    remove_column :plants, :guild_partner3
    remove_column :plants, :guild_partner4
    remove_column :plants, :guild_partner5
    remove_column :plants, :guild_partner6
    remove_column :plants, :fast_growing_green
    remove_column :plants, :early_plant
    remove_column :plants, :midseason_plant
    remove_column :plants, :slow_growing_green
    remove_column :plants, :fungal_pest_resistant
    remove_column :plants, :fungal_pest_resistant_kinds
    remove_column :plants, :drought_resistant
  end
end
