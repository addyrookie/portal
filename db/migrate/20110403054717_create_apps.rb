class CreateApps < ActiveRecord::Migration
  def self.up
    create_table :apps do |t|
      t.string :app_name
      t.string :description
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :apps
  end
end
