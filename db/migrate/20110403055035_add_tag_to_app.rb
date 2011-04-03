class AddTagToApp < ActiveRecord::Migration
  def self.up
    add_column :apps, :tag, :string
  end

  def self.down
    remove_column :apps, :tag
  end
end
