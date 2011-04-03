class CreateBugs < ActiveRecord::Migration
  def self.up
    create_table :bugs do |t|
      t.references :app
      t.string :bug_des
      t.boolean :status

      t.timestamps
    end
  end

  def self.down
    drop_table :bugs
  end
end
