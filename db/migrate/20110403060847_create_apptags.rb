class CreateApptags < ActiveRecord::Migration
  def self.up
    create_table :apptags do |t|
      t.integer :tag_id
      t.integer :app_id
      t.timestamps
    end
    add_index :apptags, :tag_id
    add_index :apptags, :app_id
    add_index :apptags, [:tag_id, :app_id], :unique => true
    
  end

  def self.down
    drop_table :apptags
  end
end
