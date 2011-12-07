class CreatePrelationships < ActiveRecord::Migration
  def self.up
    create_table :prelationships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end 
    add_index :prelationships, :follower_id
    add_index :prelationships, :followed_id
  end

  def self.down
    drop_table :prelationships
  end
end
