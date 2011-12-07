class RenameColumn < ActiveRecord::Migration
  def self.up 
    rename_column :prelationships, :follower_id, :pfollower_id
    rename_column :prelationships, :followed_id, :pfollowed_id
  end

  def self.down
  end
end
