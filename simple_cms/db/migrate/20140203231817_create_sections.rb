class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|

      t.timestamps
    end
  end
  
  def self.down
    drop_table :sections
  end
end
