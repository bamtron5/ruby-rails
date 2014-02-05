class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|

      t.timestamps
    end
  end
  
  def self.down
    drop_table :pages
  end
end
