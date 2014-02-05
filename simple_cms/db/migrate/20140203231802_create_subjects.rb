class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|

      t.timestamps
    end
  end
  
  def self.down
    drop_table :subjects
  end
end
