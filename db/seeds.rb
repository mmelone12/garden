# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)                   
              
require 'csv' 

directory = "db/init_data/"

file_name = "gardenhelpme.csv"
path_to_file = directory + file_name
puts 'Loading Plant records'
# Pre-load all Plant records
n=0
CSV.foreach(path_to_file, { :skip_blanks => true }) do |row|
  Plant.create! :name => row[0],
  :plant_type => row[2],
  :group => row[1],
  :image_path => row[44],
  :annualperennial => row[3],
  :height => row[4],
  :diameter => row[5],
  :bush_plant_tree => row[6],
  :sow_inside_outside => row[7],
  :germination_minimum => row[8],
  :germination_maximum => row[9],
  :sow_inches_apart_min => row[10],
  :sow_inches_apart_max => row[11],
  :plant_rows_apart_min => row[12],
  :plant_rows_apart_max => row[13],
  :plant_inches_deep => row[14],
  :thin_inches_apart_min => row[15],
  :thin_inches_apart_max => row[16],
  :sow_days_after_last_frost => row[17],
  :transplant_outside => row[18],
  :harvest_min => row[19],
  :harvest_max => row[20],
  :min_temp => row[21],
  :hardiness_min => row[22],
  :hardiness_max => row[23],
  :determinate_indeterminate => row[24],
  :support_type => row[25],
  :sun_needs => row[26],
  :soil_quality => row[27],
  :soil_moisture => row[28],
  :soil_acidity => row[29],
  :nitrogen_fixer => row[30],
  :casts_shade => row[31],
  :sprawls => row[32],
  :acts_as_support => row[33],
  :viney => row[34],
  :insectiary => row[35],
  :insectiary_attracts => row[36],
  :mulcher => row[37],
  :medicinal => row[38],
  :edible => row[39],
  :edible_how => row[40],
  :root_description => row[41],
  :description => row[42],
  :warning => row[43],  
  :interesting_facts => row[45],
  :native_to_min => row[46],
  :native_to_max => row[47],
  :other_skill1 => row[48],
  :other_skill2 => row[49],
  :medicinal_uses => row[50],
  :super_plant => row[51],
  :sow_continuously => row[52],
  :sow_how_often => row[53],
  :harvest_continuously => row[54],
  :harvest_how_often => row[55],
  :alternative_sowing_boolean => row[56],
  :alternative_sowing_method => row[57],
  :alternative_sow_before_lf => row[58],
  :pest_repellent => row[59],
  :pest_repellent_kinds => row[60],
  :fortress_plant => row[61],
  :nutrient1 => row[62],
  :nutrient2 => row[63],
  :nutrient3 => row[64],
  :nutrient4 => row[65],
  :wildlife_nurturer => row[66],
  :wildlife_kinds => row[67],
  :spike_root => row[68],
  :shelterbelter => row[69],
  :perennial_certainhzs => row[70],
  :perennial_min => row[71],
  :perennial_max => row[72],   
  :viney_shade => row[73],
  :guild_partner1 => row[74],
  :guild_partner2 => row[75],
  :guild_partner3 => row[76],
  :guild_partner4 => row[77],
  :guild_partner5 => row[78],
  :guild_partner6 => row[79],
  :fast_growing_green => row[80],
  :early_plant => row[81],
  :midseason_plant => row[82],
  :slow_growing_green => row[83],
  :fungal_pest_resistant => row[84],
  :fungal_pest_resistant_kinds => row[85],
  :drought_resistant => row[86]
  
n=n+1
end   