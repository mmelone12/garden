class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :title
      t.integer :user_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :state
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
