class CreateMakeUsers < ActiveRecord::Migration
  def change
    create_table :make_users do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "password", :limit => 4
      t.timestamps
    end
  end
  
  def self.down
    drop_table :make_users
  end
end
