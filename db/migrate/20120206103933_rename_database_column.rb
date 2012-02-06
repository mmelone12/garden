class RenameDatabaseColumn < ActiveRecord::Migration
  def self.up       
    rename_column :plants, :group, :name
  end

  def self.down                         
    rename_column :plants, :name, :group
  end
end
